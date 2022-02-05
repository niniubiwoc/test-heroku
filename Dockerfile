FROM alpine:latest

ADD gost /opt/gost

WORKDIR /opt

RUN RUN apk add --no-cache --virtual .build-deps ca-certificates
RUN chmod 777 gost

CMD ["./gost", "-L=https://:${PORT}"]
