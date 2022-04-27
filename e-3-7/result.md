# Image optimization

[Dockerfile](https://github.com/ollikarppinen/reakt/blob/master/Dockerfile)

## Initial image size

```
reakt                                                                latest    6e38426e574f   2 months ago    259MB

IMAGE          CREATED        CREATED BY                                      SIZE      COMMENT
6e38426e574f   2 months ago   CMD ["/bin/sh" "-c" "serve -s -l 3000 dist"]    0B        buildkit.dockerfile.v0
<missing>      2 months ago   RUN /bin/sh -c npm install -ci && npm run bu…   134MB     buildkit.dockerfile.v0
<missing>      2 months ago   WORKDIR /reakt                                  0B        buildkit.dockerfile.v0
<missing>      2 months ago   RUN /bin/sh -c apk --no-cache add git   && g…   14.8MB    buildkit.dockerfile.v0
<missing>      2 months ago   /bin/sh -c #(nop)  CMD ["node"]                 0B
<missing>      2 months ago   /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B
<missing>      2 months ago   /bin/sh -c #(nop) COPY file:4d192565a7220e13…   388B
<missing>      2 months ago   /bin/sh -c apk add --no-cache --virtual .bui…   7.84MB
<missing>      2 months ago   /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.17     0B
<missing>      2 months ago   /bin/sh -c addgroup -g 1000 node     && addu…   96.7MB
<missing>      2 months ago   /bin/sh -c #(nop)  ENV NODE_VERSION=16.14.0     0B
<missing>      5 months ago   /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      5 months ago   /bin/sh -c #(nop) ADD file:df538113122843069…   5.33MB
```

## After optimization

- changed the http server to `thttpd` which made possible to drop Node dependency from the image
- changed base image to vanilla Alpine
- changed the container user to non-root

```
ollikarppinen/reakt                                                  latest    7b158bde95e1   3 minutes ago    5.52MB

IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
7b158bde95e1   4 minutes ago    CMD ["thttpd" "-D" "-h" "0.0.0.0" "-p" "80" …   0B        buildkit.dockerfile.v0
<missing>      4 minutes ago    RUN /bin/sh -c apk --no-cache add thttpd   &…   157kB     buildkit.dockerfile.v0
<missing>      18 minutes ago   WORKDIR /usr/app/dist                           0B        buildkit.dockerfile.v0
<missing>      18 minutes ago   COPY /usr/app/dist /usr/app/dist # buildkit     16.6kB    buildkit.dockerfile.v0
<missing>      14 months ago    /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      14 months ago    /bin/sh -c #(nop) ADD file:3bf1497bd250cf7c7…   5.35MB
```
