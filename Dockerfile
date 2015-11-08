FROM vaca/alpine

COPY over /
RUN ["/root/after"]
ENTRYPOINT ["init"]
