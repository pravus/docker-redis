FROM alpine:3

RUN apk --no-cache update \
 && apk --no-cache upgrade \
 && apk --no-cache add redis

COPY entrypoint /

ENTRYPOINT ["/entrypoint"]
