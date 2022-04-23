FROM node:16-alpine

RUN apk --no-cache add git \
  && git clone https://github.com/docker-hy/material-applications.git \
  && apk del git \
  && adduser -D appuser \
  && cd /material-applications/example-frontend \
  && npm install -ci \
  && npm run build \
  && cp -r ./build /build \
  && chmod a+x /build \
  && npm install -g serve \
  && rm -rf /material-applications

# WORKDIR /material-applications/example-frontend
ENV NODE_ENV production
ENV REACT_APP_BACKEND_URL http://localhost/api

# RUN npm install -ci && npm run build && npm install -g serve

# RUN chmod a+x ./build
USER appuser

CMD ["serve", "-s", "-p", "3000", "/build"]
