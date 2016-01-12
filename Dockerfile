FROM php:apache
RUN apt-get update
RUN apt-get install -y php5-mysqlnd
RUN docker-php-ext-install pdo_mysql
COPY .htpasswd /var/www/
COPY iptablelog/ /var/www/html/
