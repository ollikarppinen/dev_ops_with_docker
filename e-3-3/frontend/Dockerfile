FROM node:16-alpine

RUN apk --no-cache add git \
  && git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/example-frontend
ENV NODE_ENV production
ENV REACT_APP_BACKEND_URL http://localhost/api

RUN npm install -ci && npm run build && npm install -g serve

RUN chmod a+x ./build && useradd -m appuser
USER appuser

CMD ["serve -s -l 3000 build"]
