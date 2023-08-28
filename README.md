###  Project Introduction
> Docker is an open source platform that enables developers to build, deploy, run, update and manage containers, executable components that combine application source code with the operating system (OS) libraries and dependencies required to run that code in any environment.

### Inception
> This project consists in having you set up a small infrastructure composed of different services under specific rules, The whole project has to be done in a virtual machine.
> You have to use docker-compose.Each Docker image must have the same name as its corresponding service. Each service has to run in a dedicated container, You then have to set up:

- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.
- Your containers have to restart in case of a crash.

### Resources
- https://www.ibm.com/topics/docker
- https://www.docker.com/resources/what-container/

![image](https://miro.medium.com/v2/resize:fit:720/format:webp/1*3ds-PdxGGMN-ZzJH95_lsA.png)
