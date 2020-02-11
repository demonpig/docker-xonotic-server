# docker-xonotic-server

This container is useful for running a dedicated Xonotic game server. 

## Tools
Be sure to install the following on an instance of openSUSE Tumbleweed.
* podman
* buildah

## Build Container
Execute the following command. 

```bash
sudo bash setup.sh
```

If you want to build a container using a different server config, then you will want to edit the `server.cfg` file
and execute the following command.

```bash
podman build .
```

### Run
```bash
# Docker
docker run -d -p 26000:26000/udp localhost/xonotic-server:latest
```
```bash
# Podman
podman run -d -p 26000P:26000/udp localhost/xonotic-server:latest
```