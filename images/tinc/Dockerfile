FROM alpine
RUN apk update
RUN apk add tinc tcpdump iptables iproute2
CMD ["sh", "/bin/start-tinc"]
COPY start-tinc /bin/start-tinc
RUN mkdir -p /etc/tinc
