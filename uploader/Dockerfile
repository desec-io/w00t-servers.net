FROM alpine:3.20

RUN apk add --no-cache \
    rsync \
    openssh-client \
    coreutils \
    findutils

COPY upload-dnstap-spool.sh /usr/local/bin/upload-dnstap-spool.sh

ENTRYPOINT ["/bin/sh", "/usr/local/bin/upload-dnstap-spool.sh"]
