#!/usr/bin/env bash

yum -y update

source nginx.sh
source java.sh

cp nginx.conf /etc/nginx
rm nginx.conf

nginx # start nginx

