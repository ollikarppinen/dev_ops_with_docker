FROM golang:1.16-alpine

RUN apk --no-cache add git \
  && git clone https://github.com/docker-hy/material-applications.git

WORKDIR /go/material-applications/example-backend

RUN go build
RUN chmod a+x ./server && useradd -m appuser

USER appuser

ENV REQUEST_ORIGIN http://localhost:3000
ENV PORT 3001

CMD ["./server"]
