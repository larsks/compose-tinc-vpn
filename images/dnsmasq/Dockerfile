FROM alpine
VOLUME /run/dnsmasq
RUN apk add --update dnsmasq tcpdump iproute2 incron bind-tools
CMD ["/bin/start-dnsmasq"]
COPY start-dnsmasq /bin/start-dnsmasq
COPY dnsmasq.incron /etc/incron.d/dnsmasq
COPY update-servers-conf /bin/update-servers-conf
