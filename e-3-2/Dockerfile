FROM docker:20

RUN apk add git

WORKDIR /src/

COPY ./push-image.sh ./push-image.sh

RUN ["chmod", "+x", "/src/push-image.sh"]

CMD ["sh", "push-image.sh"]
