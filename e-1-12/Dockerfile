FROM node:16-alpine

RUN apk update && apk add git \
  && git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/example-frontend
ENV NODE_ENV production

RUN npm install -ci && npm run build && npm install -g serve 

CMD serve -s -l 5000 build
