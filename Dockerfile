FROM    php:7.1.23-apache
RUN     docker-php-ext-install pdo_mysql  \
         &&  docker-php-ext-install mysqli \
         && docker-php-ext-enable mysqli
EXPOSE  80
CMD     ["apache2ctl", "-D", "FOREGROUND"]
