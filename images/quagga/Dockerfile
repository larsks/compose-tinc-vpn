FROM alpine
VOLUME /var/run
ENTRYPOINT ["sh", "/entrypoint.sh"]
RUN apk update
RUN apk add quagga-nhrp tcpdump iptables iproute2
COPY entrypoint.sh /entrypoint.sh
