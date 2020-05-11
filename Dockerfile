#FROM ascdc/apache2-php7 
FROM ubuntu:18.04
ENV TZ=America/Recife
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install apache2 -y
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
RUN /etc/init.d/apache2 stop
RUN /etc/init.d/apache2 start
RUN chmod -R 777 /var/www/html/lhc_web/cache/
RUN chmod 777 /var/www/html/lhc_web/settings/
RUN chmod -R 777 /var/www/html/lhc_web/var/storage
RUN chmod -R 777 /var/www/html/lhc_web/var/userphoto
RUN chmod -R 777 /var/www/html/lhc_web/var/storageform
RUN chmod -R 777 /var/www/html/lhc_web/var/storageadmintheme
RUN chmod -R 777 /var/www/html/lhc_web/var/botphoto
RUN chmod -R 777 /var/www/html/lhc_web/var/bottrphoto
RUN chmod -R 777 /var/www/html/lhc_web/var/storageinvitation
RUN chmod -R 777 /var/www/html/lhc_web/var/storagedocshare
RUN chmod -R 777 /var/www/html/lhc_web/var/storagetheme
RUN chmod -R 777 /var/www/html/lhc_web/var/tmpfiles
RUN /etc/init.d/apache2 start
CMD bash
