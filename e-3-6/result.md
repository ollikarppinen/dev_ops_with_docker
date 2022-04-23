# Multi-stage builds

## Image sizes

```
e-3-6_frontend                                                       latest    97124f3c2f2d   2 minutes ago       6.7MB
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
