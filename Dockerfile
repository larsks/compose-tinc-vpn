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

CMD ["-D"]
ENTRYPOINT ["sh", "/bin/start-tinc"]
