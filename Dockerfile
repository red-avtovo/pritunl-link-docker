FROM alpine:latest

MAINTAINER red <red.avtovo@gmail.com>

RUN apk add --no-cache go git --virtual .build-deps && \
	apk add --no-cache bash curl ca-certificates iptables ip6tables iproute2 openssl strongswan && \
	export GOPATH=/go && \
	mkdir -p /go && \
	go env -w GO111MODULE=auto && \
	go get github.com/pritunl/pritunl-link && \
	cp /go/bin/* /usr/bin/ && \
	cd / && \
	rm -rf /go && \
	apk del .build-deps

ADD rootfs /
ENTRYPOINT ["/init"]
