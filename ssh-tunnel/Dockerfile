FROM alpine

RUN apk add --no-cache openssh-client

COPY entrypoint.sh /opt

CMD ["/opt/entrypoint.sh"]
