In this project, we'll build a small infrastructure in a virtual machine using Docker compose. Each service will have its Docker image running in dedicated containers. For better performance, I'll opt for
- Alpine or Debian's second-to-last stable version.
- Write Dockerfiles for each service, build our Docker images (excluding Alpine/Debian pulls from DockerHub).
- Set up NGINX, WordPress + php-fpm, and MariaDB in separate containers.
- Create volumes for the WordPress database and files and establish a docker-network for inter-container communication.

Finally, we'll ensure automatic container restarts in case of a crash.

<img width="562" alt="inception" src="https://github.com/iouardi1/inception/assets/93824928/b97d916c-5660-4829-ad4c-86754a362917">
