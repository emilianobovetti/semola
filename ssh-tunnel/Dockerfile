FROM alpine:3.18.3

RUN apk add --no-cache openssh-client

COPY entrypoint.sh /opt

CMD ["/opt/entrypoint.sh"]
