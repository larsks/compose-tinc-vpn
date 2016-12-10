FROM alpine
RUN apk add --update dnsmasq tcpdump iptables
CMD ["sh", "/bin/start-dnsmasq"]
COPY start-dnsmasq /bin/start-dnsmasq
