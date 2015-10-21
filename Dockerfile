FROM vaca/alpine

RUN rmdir /run /tmp && ln -s dev/run && ln -s dev/tmp
RUN apk -U add s6 s6-portable-utils && rm -f /var/cache/apk/*
COPY over /
ENTRYPOINT ["init"]
