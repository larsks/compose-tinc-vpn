FROM alpine
RUN apk add --update dnsmasq tcpdump iptables iproute2
CMD ["sh", "/bin/start-dnsmasq"]
COPY start-dnsmasq /bin/start-dnsmasq
