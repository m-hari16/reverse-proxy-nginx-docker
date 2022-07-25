# Reverse Proxy Nginx using Docker

How to use this service?
------------------------
 - Clone this repository
 - Run this command in your terminal
    ````bash
    cp example-docker-compose.yml docker-compose.yml
    ````
    ````bash
    cp ./production/example.dockerfile ./production/dockerfile
    ````
    ````bash
    cp ./production/example.nginx.conf ./production/nginx.conf
    ````
    ````bash
    cp ./production/site-availables/example.site.conf ./production/site-availables/site.conf
    ````
 - Adjust file `nginx.conf` in directory `./production`
 - Adjust file `site.conf` in directory `./production/site-availables/`
 - Run this command in your terminal
   ````bash
   docker-compose build
   ````
   ````bash
   docker-compose up -d
   ````
   Great Job !
   
To check your container already running or not, you can run this command
````bash
docker ps
````
