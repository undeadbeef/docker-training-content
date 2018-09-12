# Container Concepts & Security
This repository contains the presentation and support content
for Docker training activities. It leverages
[reveal.js](https://github.com/hakimel/reveal.js) and Docker,
and allows self-hosting of the presentation via a Docker
container built from the repository itself.

## How to use
The contents of the presentation is available as a Docker image
itself, to illustrate some of the concepts in the presentation.

```
$ docker build -t docker-training:latest $(pwd)
$ docker run --rm -p 127.0.0.1:80:80 docker-training:latest
```

Once the container is up and running, just point your browser
to http://127.0.0.1/.

If you have something else listening on port 80/tcp, feel
free to change the port in the Docker command line and URL.
