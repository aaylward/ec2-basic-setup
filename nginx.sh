#!/usr/bin/env bash

yum -y install nginx
mkdir -p /etc/nginx/ssl
mkdir -p /etc/nginx/logs
touch /etc/nginx/logs/access.log

openssl genrsa -aes128 -out server.key 1024
openssl req -new -key server.key -out server.csr

cp server.key server.key.org
openssl rsa -in server.key.org -out /etc/nginx/ssl/server.key

openssl x509 -req -days 365 -in server.csr -signkey /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt

rm server.csr
rm server.key
rm server.key.org

