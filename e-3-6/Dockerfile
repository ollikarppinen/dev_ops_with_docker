FROM node:16-alpine as build-stage

ENV NODE_ENV production
ENV REACT_APP_BACKEND_URL http://localhost/api

RUN apk --no-cache add git \
  && git clone https://github.com/docker-hy/material-applications.git \
  && apk del git \
  && adduser -D appuser \
  && cd /material-applications/example-frontend \
  && npm install -ci \
  && npm run build \
  && cp -r ./build /build \
  && rm -rf /material-applications

FROM alpine:3.13.2

COPY --from=build-stage /build /build

RUN apk --no-cache add thttpd \
  && adduser -D static \
  && chmod a+x /build


WORKDIR /build

CMD ["thttpd", "-D", "-h", "0.0.0.0", "-p", "3000", "-d", "/build", "-u", "static", "-l", "-", "-M", "60"]
