FROM alpine
RUN apk add --update openssh-server
RUN adduser -D proxy < /dev/null; \
	passwd=$(dd if=/dev/urandom bs=1 count=32 | sha256sum | head -c 32); \
	echo "proxy:$passwd" | chpasswd
ENTRYPOINT ["sh", "/entrypoint.sh"]
COPY entrypoint.sh /entrypoint.sh
COPY sshd_config /etc/ssh/sshd_config
