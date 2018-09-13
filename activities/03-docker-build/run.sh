#!/bin/sh

/usr/bin/docker build -t psc/hello-go:latest $(pwd)
/usr/bin/docker run --rm psc/hello-go:latest