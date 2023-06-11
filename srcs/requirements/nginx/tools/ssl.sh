#!/bin/bash

openssl req -x509 \
            -sha256 -days 356 \
            -nodes \
            -newkey rsa:2048 \
            -subj "/CN=iouardi.cc/C=1337/L=derb Lihud" \
            -keyout /etc/nginx/ssl/iouardi.key -out /etc/nginx/ssl/iouardi.crt 
