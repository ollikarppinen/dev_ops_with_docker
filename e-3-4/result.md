# Image size optimization

Documents the frontend and backend image sizes during the optimization.

## Initial images

Initial [backend](../e-3-3/backend/Dockerfile) and [frontend](../e-3-3/frontend/Dockerfile) images.

### Size

```
e-3-4_backend                                                        latest    a10370084abc   11 minutes ago   474MB
e-3-4_frontend                                                       latest    c2ee108557ef   37 hours ago     439MB
```

### Backend image layers

```
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
a10370084abc   13 minutes ago   CMD ["./server"]                                0B        buildkit.dockerfile.v0
<missing>      13 minutes ago   ENV PORT=3001                                   0B        buildkit.dockerfile.v0
<missing>      13 minutes ago   ENV REQUEST_ORIGIN=http://localhost:3000        0B        buildkit.dockerfile.v0
<missing>      13 minutes ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      13 minutes ago   RUN /bin/sh -c chmod a+x ./server && adduser…   17.1MB    buildkit.dockerfile.v0
<missing>      38 hours ago     RUN /bin/sh -c go build # buildkit              144MB     buildkit.dockerfile.v0
<missing>      38 hours ago     WORKDIR /go/material-applications/example-ba…   0B        buildkit.dockerfile.v0
<missing>      38 hours ago     RUN /bin/sh -c apk --no-cache add git   && g…   16.6MB    buildkit.dockerfile.v0
<missing>      6 weeks ago      /bin/sh -c #(nop) WORKDIR /go                   0B
<missing>      6 weeks ago      /bin/sh -c mkdir -p "$GOPATH/src" "$GOPATH/b…   0B
<missing>      6 weeks ago      /bin/sh -c #(nop)  ENV PATH=/go/bin:/usr/loc…   0B
<missing>      6 weeks ago      /bin/sh -c #(nop)  ENV GOPATH=/go               0B
<missing>      6 weeks ago      /bin/sh -c set -eux;  apk add --no-cache --v…   290MB
<missing>      6 weeks ago      /bin/sh -c #(nop)  ENV GOLANG_VERSION=1.16.15   0B
<missing>      4 months ago     /bin/sh -c #(nop)  ENV PATH=/usr/local/go/bi…   0B
<missing>      4 months ago     /bin/sh -c [ ! -e /etc/nsswitch.conf ] && ec…   17B
<missing>      4 months ago     /bin/sh -c apk add --no-cache ca-certificates   514kB
<missing>      4 months ago     /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      4 months ago     /bin/sh -c #(nop) ADD file:df538113122843069…   5.33MB
```

### Frontend image layers

```
IMAGE          CREATED        CREATED BY                                      SIZE      COMMENT
c2ee108557ef   37 hours ago   CMD ["serve" "-s" "-p" "3000" "build"]          0B        buildkit.dockerfile.v0
<missing>      37 hours ago   USER appuser                                    0B        buildkit.dockerfile.v0
<missing>      37 hours ago   RUN /bin/sh -c chmod a+x ./build && adduser …   4.87kB    buildkit.dockerfile.v0
<missing>      38 hours ago   RUN /bin/sh -c npm install -ci && npm run bu…   312MB     buildkit.dockerfile.v0
<missing>      38 hours ago   ENV REACT_APP_BACKEND_URL=http://localhost/a…   0B        buildkit.dockerfile.v0
<missing>      38 hours ago   ENV NODE_ENV=production                         0B        buildkit.dockerfile.v0
<missing>      38 hours ago   WORKDIR /material-applications/example-front…   0B        buildkit.dockerfile.v0
<missing>      38 hours ago   RUN /bin/sh -c apk --no-cache add git   && g…   17MB      buildkit.dockerfile.v0
<missing>      2 weeks ago    /bin/sh -c #(nop)  CMD ["node"]                 0B
<missing>      2 weeks ago    /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B
<missing>      2 weeks ago    /bin/sh -c #(nop) COPY file:4d192565a7220e13…   388B
<missing>      2 weeks ago    /bin/sh -c apk add --no-cache --virtual .bui…   7.84MB
<missing>      2 weeks ago    /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.18     0B
<missing>      2 weeks ago    /bin/sh -c addgroup -g 1000 node     && addu…   96.9MB
<missing>      2 weeks ago    /bin/sh -c #(nop)  ENV NODE_VERSION=16.14.2     0B
<missing>      2 weeks ago    /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      2 weeks ago    /bin/sh -c #(nop) ADD file:90e56af13188c7f02…   5.32MB
```
