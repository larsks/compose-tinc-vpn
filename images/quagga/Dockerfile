FROM alpine
VOLUME /var/run
ENTRYPOINT ["sh", "/entrypoint.sh"]
RUN apk update
RUN apk add quagga-nhrp tcpdump iptables
COPY entrypoint.sh /entrypoint.sh
