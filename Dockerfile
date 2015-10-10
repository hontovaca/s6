FROM alpine:edge

RUN apk -U add s6 s6-portable-utils && rm -f /var/cache/apk/*
COPY init /

CMD ["/etc/init"]
