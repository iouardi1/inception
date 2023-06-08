# Use the official NGINX image as the base image
FROM debian:buster

WORKDIR /

# Copy your custom NGINX configuration file
COPY /conf/nginx.conf /etc/nginx/conf.d/

# Expose the default NGINX port
EXPOSE 443

RUN apt-get update && apt-get install nginx

# installing an editor is not necessary, but is handy
RUN apt-get -y install vim

# installing an netstat is not necessary, but is handy
RUN apt-get install net-tools

# openssl is the only required thing to install
RUN apt-get -y install openssl

COPY /tools/ssl.sh ./

RUN chmod +x ssl.sh
RUN ./ssl.sh

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
