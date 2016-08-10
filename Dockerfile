FROM alpine
MAINTAINER Lee Verberne <lee@blarg.org>

RUN apk add --update \
        certbot \
        lighttpd \
&& rm -rf /var/cache/apk/*

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
