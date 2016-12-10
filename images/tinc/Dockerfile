FROM alpine
RUN apk update
RUN apk add tinc tcpdump iptables
CMD ["sh", "/bin/start-tinc"]
COPY start-tinc /bin/start-tinc
RUN mkdir -p /etc/tinc
COPY common /etc/tinc/common
