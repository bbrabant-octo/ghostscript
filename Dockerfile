FROM alpine:3.8

MAINTAINER Benjamin BRABANT

RUN apk add --no-cache ghostscript

ENTRYPOINT ["gs"]
