#!/bin/bash

openssl req -x509 \
            -sha256 -days 356 \
            -nodes \
            -newkey rsa:2048 \
            -subj "/CN=ihsan.cc/C=1337/L=derb Lihud" \
            -keyout /etc/ssl/ihsanCA.key -out /etc/ssl/ihsanCA.crt 
