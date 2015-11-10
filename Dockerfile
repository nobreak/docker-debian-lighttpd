FROM debian:wheezy
MAINTAINER Philipp Homann <docker.pub@wwwpage.de>

RUN apt-get update && apt-get -y install \
	lighttpd \
	php5-cgi \
	vim \
	less \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php5/cgi/php.ini

COPY lighttpd/lighttpd.conf /etc/lighttpd/lighttpd.conf

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

EXPOSE 80




#COPY php/php.ini /etc/php5/cgi/php.ini
#COPY php/test.ini /etc/php5/cgi/test.ini
#COPY php.conf /etc/lighttpd/conf-available/40-php.conf
#RUN lighttpd-enable-mod fastcgi php
#RUN adduser www-data -G www-data -H -s /bin/false -D

# Ensure UTF-8
# RUN locale-gen en_US.UTF-8
# ENV LANG       en_US.UTF-8
# ENV LC_ALL     en_US.UTF-8

# RUN apt-get update
# RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y vim curl wget build-essential python-software-properties
# RUN add-apt-repository -y ppa:ondrej/php5
# RUN add-apt-repository -y ppa:nginx/stable
# RUN apt-get update
# RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y --force-yes php5-cli php5-fpm php5-mysql php5-pgsql php5-sqlite php5-curl\
#		       php5-gd php5-mcrypt php5-intl php5-imap php5-tidy

# RUN sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php5/fpm/php.ini
# RUN sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php5/cli/php.ini

