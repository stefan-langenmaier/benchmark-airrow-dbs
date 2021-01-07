# MariaDB

## Setup

docker run --name mariadb -e MYSQL_ROOT_PASSWORD=my-secret-pw  --rm -p 3306:3306 -d mariadb --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
docker exec -i mariadb mysql -pmy-secret-pw < setup.sql

## JMeter Run

Make sure that you have the `mariadb-java-client-2.7.1.jar` to the classpath.

