# Multi-stage builds

## Image sizes

```
e-3-6_frontend                                                       latest    97124f3c2f2d   2 minutes ago       6.7MB
e-3-6_backend                                                        latest    c53d8d8e2d0b   About a minute ago   22.5MB
```

## Frontend image layers

```
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
97124f3c2f2d   4 minutes ago   CMD ["thttpd" "-D" "-h" "0.0.0.0" "-p" "3000…   0B        buildkit.dockerfile.v0
<missing>      4 minutes ago   WORKDIR /build                                  0B        buildkit.dockerfile.v0
<missing>      4 minutes ago   RUN /bin/sh -c apk --no-cache add thttpd   &…   157kB     buildkit.dockerfile.v0
<missing>      4 minutes ago   COPY /build /build # buildkit                   1.19MB    buildkit.dockerfile.v0
<missing>      14 months ago   /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      14 months ago   /bin/sh -c #(nop) ADD file:3bf1497bd250cf7c7…   5.35MB
```

## Backend image layers

```
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
c53d8d8e2d0b   47 seconds ago   CMD ["/go/server"]                              0B        buildkit.dockerfile.v0
<missing>      47 seconds ago   COPY /go/server /go/server # buildkit           17.1MB    buildkit.dockerfile.v0
<missing>      47 seconds ago   ENV PORT=3001                                   0B        buildkit.dockerfile.v0
<missing>      47 seconds ago   ENV REQUEST_ORIGIN=http://localhost:3000        0B        buildkit.dockerfile.v0
<missing>      14 months ago    /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      14 months ago    /bin/sh -c #(nop) ADD file:3bf1497bd250cf7c7…   5.35MB
```
