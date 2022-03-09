FROM alpine:3

RUN apk --no-cache update \
 && apk --no-cache upgrade

RUN apk add redis

COPY conf/redis.conf /etc/
COPY entrypoint /

ENTRYPOINT ["/entrypoint"]
