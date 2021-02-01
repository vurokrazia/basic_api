# README

## Requirements
- ruby 2.5.1
- mysql 5.7
- Docker 19.03.12

## Instalation with docker
create network
  - docker network create rails-api-basic
create volume
  - docker volume  create rails-api-basic
create container MYSQL
  - docker run -d -p 3306:3306 --name rails-api-mysql --network rails-api-basic --env-file .env --mount src=rails-api-basic,dst=/var/lib/mysql mysql:5.7 
Build image
  - docker build -t basic_api:1.0 .
create container
  - docker run -itd --mount type=bind,source="$(pwd)",target=/home/app --name rails-api --env-file .env  --network rails-api-basic basic_api:1.0 
