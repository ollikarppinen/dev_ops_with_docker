FROM golang:1.16-alpine

RUN apk --no-cache add git \
  && git clone https://github.com/docker-hy/material-applications.git

WORKDIR /go/material-applications/example-backend

RUN go build

CMD ./server
