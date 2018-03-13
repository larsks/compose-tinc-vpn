FROM alpine
RUN apk add --update tinc tcpdump iptables iproute2 ulogd
CMD ["sh", "/bin/start-tinc"]
COPY start-tinc /bin/start-tinc
RUN mkdir -p /etc/tinc
