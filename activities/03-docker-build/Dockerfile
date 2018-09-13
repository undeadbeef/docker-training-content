FROM golang:alpine

WORKDIR /go/src/app
COPY .  /go/src/app

RUN go build

CMD ["./app"]