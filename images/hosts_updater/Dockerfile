FROM alpine

ENV VPN_HOST_UPDATE_PERIOD=15min

RUN apk add -U git openssh-client
COPY update-hosts.sh /bin/update-hosts
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD crond -f -d8
