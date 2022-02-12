FROM alpine

RUN apk add --no-cache openssh-client

COPY entrypoint.sh /opt

CMD ["sh", "/opt/entrypoint.sh"]
