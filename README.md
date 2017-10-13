# Apache (HTTP) in Habitat

Run an apache website that reports the time and the ip address of the system.

![Apache Site](https://user-images.githubusercontent.com/244426/31556543-1ac605de-b00b-11e7-9177-8dba71e6f479.png)

## Building and Running with Habitat

1. Install [Habitat](https://www.habitat.sh/tutorials/download/)
2. Install [Docker](https://www.docker.com/get-docker)

3. Build the Habitat package and run it

```
$ export HAB_DOCKER_OPTS="-p 8000:80"
$ hab studio enter
$ build
$ hab svc start YOURORG/webapp
```

Visit the site in your browser at http://localhost:8000

4. Build the Habitat package and export it to Docker

```
$ hab studio enter
$ build
$ hab pkg export docker YOURORG/webapp
$ exit
$ docker run -p 8000:80 YOURORG/webapp
```
