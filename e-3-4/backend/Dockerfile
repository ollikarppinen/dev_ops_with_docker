FROM golang:1.16-alpine

RUN apk --no-cache add git \
  && git clone https://github.com/docker-hy/material-applications.git \
  && apk del git \
  && adduser -D appuser \
  && cd /go/material-applications/example-backend \
  && go build -o /go/ \
  && rm -rf /go/material-applications \
  && chmod a+x /go/server

USER appuser

ENV REQUEST_ORIGIN http://localhost:3000
ENV PORT 3001

CMD ["/go/server"]
