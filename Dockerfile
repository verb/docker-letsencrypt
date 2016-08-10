FROM alpine
MAINTAINER Lee Verberne <lee@blarg.org>

RUN apk add --update \
        certbot \
        lighttpd \
&& rm -rf /var/cache/apk/*

USER lighttpd
CMD ["lighttpd", "-D"]
