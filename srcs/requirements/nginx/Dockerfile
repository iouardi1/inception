# Use the official NGINX image as the base image
FROM nginx

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration file
COPY /conf/nginx.conf /etc/nginx/conf.d/

# Expose the default NGINX port
EXPOSE 80

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
