FROM node:16-alpine

RUN apk add git \
  && git clone https://github.com/ollikarppinen/reakt.git

WORKDIR /reakt

RUN npm install -ci && npm run build && npm install -g serve

CMD serve -s -l 3000 dist
