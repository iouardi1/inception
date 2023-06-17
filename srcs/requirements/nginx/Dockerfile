FROM	debian:buster

RUN		apt-get update
RUN		apt-get install -y nginx \
              openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/iouardi.crt \
       -keyout /etc/nginx/ssl/iouardi.key \
       -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=iouardi/CN=iouardi/"

COPY ./conf/nginx.conf /etc/nginx/conf.d

RUN mkdir -p /run/nginx

EXPOSE	443

CMD ["nginx", "-g", "daemon off;"]