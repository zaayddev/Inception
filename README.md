###  Project Introduction
> An IRC (Internet Relay Chat) server is a type of chat server that enables communication through text-based messages between multiple users. It operates using the IRC protocol, which provides a way for people to communicate in real-time over the internet. IRC servers can host multiple channels, where users can participate in group conversations or join private conversations with other users. IRC is often used for community-based discussions and has been popular for many years, especially in the open-source software community.

### FT_IRC
> Each Docker image must have the same name as its corresponding service. Each service has to run in a dedicated container: You then have to set up:

- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.
- Your containers have to restart in case of a crash.

### Resources
> To implement an IRC (Internet Relay Chat) server, you can start by checking out various resources available online. Some useful resources include IRC specifications and protocols, open-source IRC server software such as IRCd, tutorials, and forums where you can ask questions and get help from other developers. Additionally, consider reading up on the architecture of IRC servers and its underlying technologies, such as TCP/IP, to get a deeper understanding of how they work...

- https://datatracker.ietf.org/doc/html/rfc2812#section-3.2.2
- http://chi.cs.uchicago.edu/chirc/index.html
- https://github.com/clbouche/ft_irc#readme[![](aa)]

![image](https://user-images.githubusercontent.com/115412096/219873666-986a2e26-37b4-4e43-ad81-65e2eae063f0.png)

>  With a combination of these resources, you should be well-equipped to start building your own IRC server.
