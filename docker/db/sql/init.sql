CREATE TABLE `users` (
  `id`           VARCHAR(10) NOT NULL,
  `name`         VARCHAR(255) NOT NULL,
  `name_kana`    VARCHAR(255) NOT NULL,
  `birthday`     DATE NOT NULL,
  `gender`       VARCHAR(10) NOT NULL,
  `organization` VARCHAR(20) NOT NULL,
  `post`         VARCHAR(20) NOT NULL,
  `start_date`   DATE NOT NULL,
  `tel`          VARCHAR(20) NOT NULL,
  `mail_address` VARCHAR(255) NOT NULL,
  `created`      DATETIME,
  `updated`      DATETIME,
  CONSTRAINT PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE `login_accounts` (
  `id`           INT NOT NULL AUTO_INCREMENT,
  `login_id`     VARCHAR(100) NOT NULL UNIQUE,
  `password`     VARCHAR(255) NOT NULL,
  `name`         VARCHAR(255) NOT NULL,
  `created`      DATETIME,
  `updated`      DATETIME,
  CONSTRAINT PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

CREATE TABLE `sessions` (
  `session_id`   VARCHAR(255) NOT NULL,
  `session_data` TEXT,
  `created`      DATETIME,
  `updated`      DATETIME,
  CONSTRAINT PRIMARY KEY (session_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_bin;

SET NAMES utf8mb4;

INSERT INTO users VALUES ('100001', '窪田　栄美', 'クボタ　エミ', '1959/5/29', '女性', 'システム開発1部', '課長', '1981/4/1', '0463232382', '100001@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100002', '米田　啓一', 'ヨネダ　ケイイチ', '1959/6/3', '男性', 'システム開発3部', '部長', '1981/4/1', '0776040213', '100002@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100003', '猪俣　智恵子', 'イノマタ　チエコ', '1960/8/16', '女性', 'システム開発3部', '課長', '1982/4/1', '0875462543', '100003@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100004', '大友　百華', 'オオトモ　モモカ', '1960/7/14', '女性', '人事部', '部長', '1982/4/1', '0528891612', '100004@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100005', '小玉　雛乃', 'コダマ　ヒナノ', '1960/12/11', '女性', 'システム開発1部', '次長', '1982/4/1', '0763335824', '100005@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100006', '白木　樹里', 'シラキ　ジュリ', '1960/12/14', '女性', 'システム開発1部', '部長', '1982/4/1', '0775005029', '100006@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100007', '平林　佳那子', 'ヒラバヤシ　カナコ', '1960/9/3', '女性', 'システム開発3部', '課長', '1982/4/1', '0887134233', '100007@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100008', '大関　健治', 'オオゼキ　ケンジ', '1961/8/28', '男性', 'システム開発4部', '部長', '1983/4/1', '0985657669', '100008@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100009', '荻野　桃香', 'オギノ　モモカ', '1961/10/12', '女性', 'システム開発3部', '次長', '1983/4/1', '0987288323', '100009@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100010', '川添　優花', 'カワゾエ　ユカ', '1961/3/27', '女性', 'システム開発5部', '次長', '1983/4/1', '0259688606', '100010@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100011', '北川　芽依', 'キタガワ　メイ', '1961/10/8', '女性', 'システム開発5部', '課長', '1983/4/1', '0762507423', '100011@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100012', '小峰　太郎', 'コミネ　タロウ', '1961/7/22', '男性', 'システム開発5部', '一般', '1983/4/1', '0599799540', '100012@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100013', '土橋　希実', 'ツチハシ　ノゾミ', '1962/5/3', '女性', '営業部', '部長', '1984/4/1', '0990347087', '100013@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100014', '坂　進', 'バン　ススム', '1962/10/5', '男性', 'システム開発2部', '部長', '1984/4/1', '0745099862', '100014@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100015', '米沢　浩司', 'ヨネザワ　コウジ', '1962/12/6', '男性', 'システム開発4部', '次長', '1984/4/1', '0959026197', '100015@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100016', '河野　清三郎', 'カワノ　セイザブロウ', '1963/7/24', '男性', 'システム開発2部', '次長', '1985/4/1', '076190514', '100016@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100017', '新保　清子', 'シンポ　キヨコ', '1963/9/15', '女性', 'システム開発5部', '次長', '1985/4/1', '0232461460', '100017@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100018', '寺西　繁', 'テラニシ　シゲル', '1965/9/16', '男性', '営業部', '一般', '1987/4/1', '083369504', '100018@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100019', '金野　義彦', 'カネノ　ヨシヒコ', '1966/12/28', '男性', 'システム開発3部', '一般', '1988/4/1', '0173923833', '100019@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100020', '上岡　忠三', 'カミオカ　チュウゾウ', '1966/8/10', '男性', 'システム開発4部', '課長', '1988/4/1', '0232818654', '100020@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100021', '山城　正好', 'ヤマシロ　マサヨシ', '1966/9/17', '男性', 'システム開発5部', '部長', '1988/4/1', '0255481975', '100021@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100022', '浅見　智子', 'アサミ　トモコ', '1967/5/12', '女性', 'システム開発1部', '課長', '1989/4/1', '0830381022', '100022@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100023', '大関　尚志', 'オオゼキ　ヒサシ', '1967/12/12', '男性', 'システム開発1部', '次長', '1989/4/1', '0167378514', '100023@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100024', '平林　灯', 'ヒラバヤシ　アカリ', '1967/2/25', '女性', 'システム開発5部', '一般', '1989/4/1', '0765032969', '100024@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100025', '水田　梨加', 'ミズタ　リカ', '1967/6/26', '女性', 'システム開発5部', '課長', '1989/4/1', '0746465114', '100025@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100026', '倉本　純子', 'クラモト　ジュンコ', '1968/8/9', '女性', 'システム開発5部', '一般', '1990/4/1', '0597958271', '100026@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100027', '伏見　範明', 'フシミ　ノリアキ', '1968/5/5', '男性', 'システム開発3部', '一般', '1990/4/1', '0248541174', '100027@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100028', '南田　喜代志', 'ミナミダ　キヨシ', '1968/7/19', '男性', 'システム開発2部', '課長', '1990/4/1', '0898505714', '100028@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100029', '田上　隆夫', 'タウエ　タカオ', '1969/6/19', '男性', 'システム開発1部', '課長', '1991/4/1', '063652816', '100029@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100030', '塚本　博司', 'ツカモト　ヒロシ', '1969/4/3', '男性', 'システム開発3部', '次長', '1991/4/1', '0768036743', '100030@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100031', '仲野　善之', 'ナカノ　ヨシユキ', '1969/3/21', '男性', 'システム開発4部', '次長', '1991/4/1', '0289302928', '100031@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100032', '古河　綾花', 'フルカワ　アヤカ', '1969/2/18', '女性', 'システム開発2部', '一般', '1991/4/1', '0744264783', '100032@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100033', '香川　邦子', 'カガワ　クニコ', '1970/4/9', '女性', 'システム開発2部', '次長', '1992/4/1', '0184680561', '100033@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100034', '内野　晶', 'ウチノ　アキラ', '1971/10/12', '男性', 'システム開発2部', '課長', '1993/4/1', '0766223424', '100034@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100035', '高倉　菜緒', 'タカクラ　ナオ', '1971/12/14', '女性', '営業部', '一般', '1993/4/1', '085202114', '100035@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100036', '玉置　蒼', 'タマキ　アオイ', '1971/1/25', '女性', 'システム開発3部', '一般', '1993/4/1', '0542909670', '100036@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100037', '梅原　定吉', 'ウメハラ　サダキチ', '1973/9/30', '男性', 'システム開発3部', '一般', '1995/4/1', '0858164241', '100037@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100038', '沢村　明莉', 'サワムラ　アカリ', '1973/7/31', '女性', '人事部', '一般', '1995/4/1', '0884823942', '100038@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100039', '筒井　喜太郎', 'ツツイ　キタロウ', '1973/9/14', '男性', '総務部', '部長', '1995/4/1', '0189286268', '100039@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100040', '長崎　祐一', 'ナガサキ　ユウイチ', '1973/5/20', '男性', 'システム開発3部', '一般', '1995/4/1', '059826171', '100040@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100041', '伴　亜由美', 'バン　アユミ', '1973/2/24', '女性', 'システム開発5部', '一般', '1995/4/1', '0996391997', '100041@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100042', '渡辺　利治', 'ワタナベ　トシハル', '1973/8/10', '男性', 'システム開発4部', '課長', '1995/4/1', '027731068', '100042@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100043', '伊東　莉歩', 'イトウ　リホ', '1974/1/6', '女性', 'システム開発2部', '一般', '1996/4/1', '0972075996', '100043@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100044', '白井　優起', 'シライ　ユウキ', '1974/3/25', '男性', 'システム開発4部', '一般', '1996/4/1', '0950206116', '100044@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100045', '白鳥　喜代', 'シラトリ　キヨ', '1975/9/19', '女性', 'システム開発3部', '一般', '1997/4/1', '0276883757', '100045@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100046', '橋爪　貞二', 'ハシヅメ　テイジ', '1975/1/27', '男性', 'システム開発4部', '一般', '1997/4/1', '0772335685', '100046@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100047', '岩田　明', 'イワタ　アキラ', '1976/10/14', '男性', 'システム開発2部', '一般', '1998/4/1', '0282520662', '100047@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100048', '河本　虎雄', 'カワモト　トラオ', '1976/4/26', '男性', 'システム開発5部', '一般', '1998/4/1', '0554314780', '100048@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100049', '田上　浩司', 'タウエ　コウジ', '1976/2/23', '男性', 'システム開発1部', '一般', '1998/4/1', '0355352398', '100049@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100050', '高松　英彦', 'タカマツ　ヒデヒコ', '1976/5/6', '男性', 'システム開発1部', '一般', '1998/4/1', '0767434689', '100050@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100051', '滝田　文平', 'タキタ　ブンペイ', '1977/8/3', '男性', 'システム開発3部', '一般', '1999/4/1', '0530154001', '100051@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100052', '今　望美', 'コン　ノゾミ', '1979/12/16', '女性', 'システム開発4部', '一般', '2001/4/1', '0964348639', '100052@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100053', '澤田　咲季', 'サワダ　サキ', '1980/11/10', '女性', 'システム開発2部', '一般', '2002/4/1', '0795366136', '100053@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100054', '諸星　栄三郎', 'モロボシ　エイザブロウ', '1980/4/30', '男性', 'システム開発3部', '一般', '2002/4/1', '0196842587', '100054@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100055', '岸本　忠', 'キシモト　タダシ', '1981/5/4', '男性', 'システム開発4部', '一般', '2003/4/1', '0942341048', '100055@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100056', '高瀬　朗', 'タカセ　アキラ', '1981/8/6', '男性', 'システム開発1部', '一般', '2003/4/1', '082793170', '100056@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100057', '本多　眞', 'ホンダ　マコト', '1981/7/18', '男性', 'システム開発5部', '一般', '2003/4/1', '0532072685', '100057@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100058', '朝倉　真琴', 'アサクラ　マコト', '1982/5/8', '女性', 'システム開発3部', '一般', '2004/4/1', '0849034487', '100058@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100059', '神保　和島', 'ジンボ　ワジマ', '1982/6/13', '男性', 'システム開発4部', '一般', '2004/4/1', '0982551408', '100059@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100060', '須賀　秀', 'スガ　ヒデ', '1982/2/9', '男性', 'システム開発4部', '一般', '2004/4/1', '0956902923', '100060@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100061', '豊田　碧依', 'トヨダ　アオイ', '1982/10/8', '女性', 'システム開発4部', '一般', '2004/4/1', '0749603169', '100061@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100062', '久野　靖', 'ヒサノ　ヤスシ', '1982/9/19', '男性', 'システム開発1部', '一般', '2004/4/1', '0954792920', '100062@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100063', '上原　修一', 'ウエハラ　シュウイチ', '1983/2/24', '男性', 'システム開発3部', '一般', '2005/4/1', '0846295140', '100063@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100064', '角田　夏子', 'カクタ　ナツコ', '1983/3/7', '女性', 'システム開発4部', '一般', '2005/4/1', '087589402', '100064@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100065', '千田　麗香', 'センダ　レイカ', '1983/3/29', '女性', 'システム開発5部', '一般', '2005/4/1', '0991147424', '100065@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100066', '立川　政夫', 'タチカワ　マサオ', '1983/4/5', '男性', 'システム開発4部', '一般', '2005/4/1', '0186337855', '100066@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100067', '柏原　靖夫', 'カシワバラ　ヤスオ', '1985/7/24', '男性', 'システム開発5部', '一般', '2007/4/1', '0773071323', '100067@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100068', '五味　緑', 'ゴミ　ミドリ', '1985/8/13', '女性', 'システム開発2部', '一般', '2007/4/1', '059536142', '100068@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100069', '土肥　勇雄', 'ドイ　イサオ', '1985/10/21', '男性', 'システム開発1部', '一般', '2007/4/1', '0986254557', '100069@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100070', '島　朋香', 'シマ　トモカ', '1986/1/12', '女性', 'システム開発2部', '一般', '2008/4/1', '0539784904', '100070@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100071', '下田　詩', 'シモダ　ウタ', '1986/8/10', '女性', 'システム開発3部', '一般', '2008/4/1', '0227862462', '100071@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100072', '冨永　利佳', 'トミナガ　リカ', '1986/9/9', '女性', 'システム開発4部', '一般', '2008/4/1', '097735016', '100072@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100073', '古屋　秋友', 'フルヤ　アキトモ', '1986/3/9', '男性', 'システム開発2部', '一般', '2008/4/1', '0937409985', '100073@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100074', '松木　優', 'マツキ　マサル', '1986/6/13', '男性', 'システム開発1部', '一般', '2008/4/1', '0774667596', '100074@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100075', '上山　稟', 'カミヤマ　リン', '1987/4/9', '女性', 'システム開発3部', '一般', '2009/4/1', '0238762170', '100075@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100076', '畠山　琴子', 'ハタケヤマ　コトコ', '1987/7/25', '女性', 'システム開発1部', '一般', '2009/4/1', '0837628045', '100076@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100077', '矢吹　憲治', 'ヤブキ　ケンジ', '1987/12/5', '男性', 'システム開発5部', '一般', '2009/4/1', '0985428127', '100077@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100078', '笹本　里歌', 'ササモト　リカ', '1988/9/1', '女性', 'システム開発1部', '一般', '2010/4/1', '0740698366', '100078@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100079', '河田　望美', 'カワダ　ノゾミ', '1989/7/29', '女性', 'システム開発2部', '一般', '2011/4/1', '0991919560', '100079@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100080', '坂井　櫻', 'サカイ　サクラ', '1990/5/18', '女性', 'システム開発4部', '一般', '2012/4/1', '0590433607', '100080@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100081', '谷口　由紀', 'タニグチ　ユキ', '1990/2/20', '女性', 'システム開発2部', '一般', '2012/4/1', '0955790678', '100081@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100082', '上村　勝美', 'ウエムラ　カツミ', '1991/3/28', '男性', '総務部', '一般', '2013/4/1', '0223928456', '100082@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100083', '中岡　梨沙', 'ナカオカ　リサ', '1991/4/27', '女性', 'システム開発3部', '一般', '2013/4/1', '0744990912', '100083@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100084', '村瀬　美代子', 'ムラセ　ミヨコ', '1991/8/23', '女性', 'システム開発1部', '一般', '2013/4/1', '0572440470', '100084@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100085', '室井　実結', 'ムロイ　ミユ', '1991/4/28', '女性', 'システム開発5部', '一般', '2013/4/1', '0569165736', '100085@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100086', '石本　悦代', 'イシモト　エツヨ', '1992/1/30', '女性', 'システム開発5部', '一般', '2014/4/1', '0940961063', '100086@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100087', '大浦　知美', 'オオウラ　トモミ', '1993/12/14', '女性', 'システム開発2部', '一般', '2015/4/1', '0322358389', '100087@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100088', '成田　尚子', 'ナリタ　ナオコ', '1993/3/28', '女性', 'システム開発2部', '一般', '2015/4/1', '0595307662', '100088@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100089', '福田　麻理子', 'フクダ　マリコ', '1993/5/21', '女性', 'システム開発1部', '一般', '2015/4/1', '0890263670', '100089@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100090', '木田　靖彦', 'キダ　ヤスヒコ', '1994/11/13', '男性', '営業部', '一般', '2016/4/1', '0735443679', '100090@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100091', '坂元　咲幸', 'サカモト　サユキ', '1994/8/17', '女性', 'システム開発2部', '一般', '2016/4/1', '0736068486', '100091@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100092', '中嶋　天斗', 'ナカジマ　タカト', '1994/4/7', '男性', 'システム開発2部', '一般', '2016/4/1', '0265168618', '100092@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100093', '海野　晴彦', 'ウミノ　ハルヒコ', '1995/11/5', '男性', 'システム開発4部', '一般', '2017/4/1', '0577253088', '100093@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100094', '金沢　心咲', 'カナザワ　ミサキ', '1995/11/25', '女性', 'システム開発1部', '一般', '2017/4/1', '0737203666', '100094@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100095', '関本　清隆', 'セキモト　キヨタカ', '1995/7/23', '男性', 'システム開発5部', '一般', '2017/4/1', '0262163396', '100095@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100096', '松山　寛貴', 'マツヤマ　ヒロキ', '1995/8/2', '男性', 'システム開発5部', '一般', '2017/4/1', '0955105430', '100096@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100097', '辻本　実緒', 'ツジモト　ミオ', '1996/9/4', '女性', '人事部', '一般', '2018/4/1', '0859575706', '100097@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100098', '園田　風奈穂', 'ソノダ　カナホ', '1997/6/10', '女性', '総務部', '一般', '2019/4/1', '0288088994', '100098@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100099', '江田　冬香', 'エダ　トウカ', '1998/8/13', '女性', 'システム開発1部', '一般', '2020/4/1', '0189066087', '100099@example.co.jp', NOW(), NOW());
INSERT INTO users VALUES ('100100', '町田　俊範', 'マチダ　トシノリ', '1998/8/31', '男性', 'システム開発4部', '一般', '2020/4/1', '0246212838', '100100@example.co.jp', NOW(), NOW());

INSERT INTO login_accounts VALUES (1, 'admin', '$2y$10$nYG/BymkZz/W8hybdu1SZ.PiSx/GkW38H6pdDLIztX3mDnKR3GeS2', 'テストユーザー1', NOW(), NOW());