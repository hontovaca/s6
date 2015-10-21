FROM vaca/alpine

RUN apk -U add s6 s6-portable-utils && rm -f /var/cache/apk/*
COPY over /
ENTRYPOINT ["init"]
