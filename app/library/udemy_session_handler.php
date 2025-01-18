<?php

declare(strict_types=1);

class UdemySessionHandler implements SessionHandlerInterface
{
    private string $sessionCacheData = "";

    public function open(string $path, string $name): bool
    {
        return true;
    }

    public function close(): bool
    {
        return true;
    }

    public function read(string $id): string
    {
        $result = '';
        $sql = "SELECT session_data FROM sessions WHERE session_id = :session_id";

        $param = ['session_id' => $id];

        $resource = DataBase::fetch($sql, $param);
        if (!empty($resource)) {
            $result = $resource['session_data'];
        }

        $this->sessionCacheData = $result;
        return $result;
    }

    public function write(string $id, string $data): bool
    {
        $result = false;

        if ($this->sessionCacheData === $data) {
            // session情報がそのままのときは時間だけ更新
            $sql = "UPDATE sessions SET updated = NOW() WHERE session_id = :session_id";

            $param = array('session_id' => $id);
            DataBase::execute($sql, $param);

            $result = true;
        } else {
            // sessionデータ作成
            $sql = "INSERT INTO sessions (session_id, session_data, created, updated) "
                . "VALUES (:session_id, :session_data, NOW(), NOW()) "
                . "ON DUPLICATE KEY UPDATE session_data = :session_data, updated = NOW() ";

            $param = array('session_id' => $id, 'session_data' => $data);
            DataBase::execute($sql, $param);

            $this->sessionCacheData = $data;
            $result = true;
        }
        return $result;
    }

    public function destroy(string $id): bool
    {
        $sql = "DELETE FROM sessions WHERE session_id = :session_id";

        $param = array('session_id' => $id);
        DataBase::execute($sql, $param);

        $this->sessionCacheData = "";

        return true;
    }

    public function gc(int $maxLifetime): bool
    {
        return true;
    }
}
