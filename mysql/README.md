# MySQL

## Setup

docker run --name mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw  --rm -p 3306:3306 -d mysql --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
docker exec -i mysql mysql -pmy-secret-pw < setup.sql

## JMeter Run

Make sure that you have the `mysql-connector-java-8.0.22.jar` to the classpath.

