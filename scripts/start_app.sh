# !/bin/bash

# MySQLサーバーが起動してからGolangのアプリケーションを起動させる
until mysqladmin ping -h mysql --silent; do
  echo 'waiting for mysqld to be connectable...'
  sleep 2
done

echo "app is starting...!"
exec go run main.go
