# Use the official NGINX image as the base image
FROM debian:buster

# Copy your custom NGINX configuration file
COPY /conf/nginx.conf /etc/nginx/conf.d/

# Expose the default NGINX port
EXPOSE 443

RUN mkdir openssl   cd openssl
# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
