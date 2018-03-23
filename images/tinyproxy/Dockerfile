FROM alpine
RUN apk add --update tinyproxy
ENTRYPOINT ["tinyproxy", "-d"]
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf
