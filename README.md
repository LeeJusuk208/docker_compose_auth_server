# docker_compose_auth_server
## How to use
```console
$ git clone https://github.com/LeeJusuk208/docker_compose_auth_server.git
$ cd docker_compose_auth_server
$ ./run_docker_compose.sh start # 이미지 최신화 및 docker-compose 실행
$ ./run_docker_compose.sh stop  # docker-compose 종료 및 이미지 정리
```
## 사용 git repository
* https://github.com/LeeJusuk208/simple-front-server.git
* https://github.com/LeeJusuk208/auth-server.git
* https://github.com/LeeJusuk208/session-db-server.git
* https://github.com/LeeJusuk208/alarm-server.git
* https://github.com/LeeJusuk208/mpt-goods-server.git

## 사용 dockerhub repository
* nginx:latest
* jusuk/simple-front-server:latest
* jusuk/auth-server:latest
* jusuk/session-db-server:latest
* jusuk/alarm-server:latest
* jusuk/goods-server:latest