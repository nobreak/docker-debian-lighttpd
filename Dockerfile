FROM debian:wheezy
MAINTAINER Philipp Homann <docker.pub@wwwpage.de>

RUN apt-get update && apt-get -y install lighttpd


CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

EXPOSE 80

