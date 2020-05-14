#FROM ascdc/apache2-php7 
FROM ubuntu:18.04
ENV TZ=America/Recife
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install apache2 -y
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"
VOLUME /var/www/html
EXPOSE 80
RUN apt-get install php -y
RUN apt-get install php-bcmath -y
RUN apt-get install php-bz2 -y
RUN apt-get install php-intl -y
RUN apt-get install php-gd -y
RUN apt-get install php-mbstring -y
RUN apt-get install php-mysql -y
RUN apt-get install php-zip -y
RUN apt-get install php-fpm -y
RUN apt-get install php-curl -y
RUN mkdir /var/www/html/lhc_web/
COPY ./lhc_web /var/www/html/lhc_web/
COPY ./permissao.sh /var/www/html/lhc_web/
WORKDIR /var/www/html/lhc_web/
ENTRYPOINT /etc/init.d/apache2 start && /bin/bash
