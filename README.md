# aws_practice_docker
- aws環境のローカル環境

![Image](https://github.com/user-attachments/assets/f31eefa3-4581-47c3-bc3e-0a618f6b9d47)

```cmd
[ec2-user@ip-10-0-100-5 awsPracticeWebApp]$ docker compose up -d --build                                                               [+] Building 36.4s (13/13) FINISHED
 => [internal] load build definition from Dockerfile                       0.0s
 => => transferring dockerfile: 691B                                       0.0s
 => [internal] load metadata for docker.io/library/php:8.0.16-apache       0.6s
 => [internal] load .dockerignore                                          0.0s
 => => transferring context: 2B                                            0.0s
 => [1/8] FROM docker.io/library/php:8.0.16-apache@sha256:efc6eed4ef456e  10.3s
 => => resolve docker.io/library/php:8.0.16-apache@sha256:efc6eed4ef456e3  0.0s
 => => sha256:418d05f34fc8335597544e0da692b7ccf95143c7c111e6d 226B / 226B  0.1s
 => => sha256:efc6eed4ef456e3683891d101e5ee4ca0e128cf8271 1.86kB / 1.86kB  0.0s
 => => sha256:ba58110c932a1e09e47aee41f813709c9560a7b241b 3.04kB / 3.04kB  0.0s
 => => sha256:42fd07921d8cb47105440e7b60896fec8c6c767ff 12.51kB / 12.51kB  0.0s
 => => sha256:f7a1c6dad28192bd417b78079d6ddc03cbca6d5ea 31.37MB / 31.37MB  0.8s
 => => sha256:12340edc305c0436d312e2c4234ef0f16eff26808 91.60MB / 91.60MB  3.1s
 => => sha256:505a3ac779969d3e1cf988bf619cab2f3c65376f2fa36b0 270B / 270B  0.2s
 => => sha256:508288175cbf0cf6969f9b7f28002145ed173e3f1 19.25MB / 19.25MB  1.5s
 => => extracting sha256:f7a1c6dad28192bd417b78079d6ddc03cbca6d5ea46bba12  2.9s
 => => sha256:55c636ebd5df834eb9641eed00d8f8e7de02356b32a7010 476B / 476B  0.9s
 => => sha256:22c6b8d33038b8d0c353d99b342040751782273479e5978 513B / 513B  1.1s
 => => sha256:9099f5dbd386a147eeaf515e63f3fae573a451c10 11.20MB / 11.20MB  1.8s
 => => sha256:b6c89fd517c4a2b26765325a5ca1ce8503decb199360566 492B / 492B  1.6s
 => => sha256:e439f4721c6d12eb570ba93d16ad94ce47894d2f6 10.77MB / 10.77MB  2.5s
 => => sha256:c2427e9e6b1d4deae7ad348f23d5d37dfb9d89720e2 2.31kB / 2.31kB  1.8s
 => => sha256:65aed83020086bf15d58a2d630ce74361c718a2660acb47 247B / 247B  1.9s
 => => sha256:46727351e25a236f73e6b6d1b8dde7c201706222885aa4d 896B / 896B  2.0s
 => => extracting sha256:418d05f34fc8335597544e0da692b7ccf95143c7c111e6d7  0.0s
 => => extracting sha256:12340edc305c0436d312e2c4234ef0f16eff268086be6e59  4.1s
 => => extracting sha256:505a3ac779969d3e1cf988bf619cab2f3c65376f2fa36b03  0.0s
 => => extracting sha256:508288175cbf0cf6969f9b7f28002145ed173e3f1c398580  0.8s
 => => extracting sha256:55c636ebd5df834eb9641eed00d8f8e7de02356b32a7010d  0.0s
 => => extracting sha256:22c6b8d33038b8d0c353d99b342040751782273479e59789  0.0s
 => => extracting sha256:9099f5dbd386a147eeaf515e63f3fae573a451c102093e82  0.1s
 => => extracting sha256:b6c89fd517c4a2b26765325a5ca1ce8503decb199360566b  0.0s
 => => extracting sha256:e439f4721c6d12eb570ba93d16ad94ce47894d2f6e9ddfc0  0.6s
 => => extracting sha256:c2427e9e6b1d4deae7ad348f23d5d37dfb9d89720e2ab3b8  0.0s
 => => extracting sha256:65aed83020086bf15d58a2d630ce74361c718a2660acb476  0.0s
 => => extracting sha256:46727351e25a236f73e6b6d1b8dde7c201706222885aa4d9  0.0s
 => [internal] load build context                                          0.0s
 => => transferring context: 128B                                          0.0s
 => [2/8] RUN mkdir /udemy                                                 0.6s
 => [3/8] WORKDIR /udemy                                                   0.0s
 => [4/8] COPY ./php.ini /usr/local/etc/php/conf.d/php.ini                 0.0s
 => [5/8] RUN ln -snf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime   &&   0.3s
 => [6/8] RUN apt-get update   && apt-get install -y     cron     vim     19.2s
 => [7/8] RUN sed -ri -e   's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g'     0.5s
 => [8/8] RUN sed -ri -e   's!/var/www/!${APACHE_DOCUMENT_ROOT}!g'   /etc  0.5s
 => exporting to image                                                     4.1s
 => => exporting layers                                                    4.1s
 => => writing image sha256:35460083beed3fc8a1ca1d7538e966dcb2936762962d5  0.0s
 => => naming to docker.io/library/awspracticewebapp-web                   0.0s
[+] Running 2/2
 ✔ Network awspracticewebapp_default  Created                              0.2s
 ✔ Container web                      Started                              0.8s
 ```