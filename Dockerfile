FROM alpine

RUN apk add --update \
	tinc \
	tcpdump \
	iptables \
	iproute2 \
	nftables \
	ulogd \
	bind-tools
COPY start-tinc /bin/start-tinc

RUN mkdir -p /etc/tinc
COPY tinc /etc/tinc/vpn
COPY hosts /etc/tinc/vpn/hosts

CMD ["-D"]
ENTRYPOINT ["sh", "/bin/start-tinc"]
