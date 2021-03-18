### Dockerfile for FROST-Server (HTTP)

I was looking for a recent [FROST-Server](https://github.com/FraunhoferIOSB/FROST-Server)
image to be deployed on a Raspberry Pi. Unfortunately I didn't find anything suitable on
Docker-Hub, so I rolled my own.

You might want to use the included ``docker-compose.yaml`` file to fire up a FROST-Server
with a PostgreSQL/Postgis 11 instance on a Raspberry Pi. You only need to adjust the
``serviceRootUrl`` option to point at the IP of your Pi.

[https://hub.docker.com/repository/docker/bettwanze/frost-server-http](https://hub.docker.com/repository/docker/bettwanze/frost-server-http)
