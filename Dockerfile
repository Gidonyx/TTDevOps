FROM php:8.1.7-fpm
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
mkdir -p /var/www/html && \
apt update && \
apt install -y unzip
COPY ./ /var/www/html
RUN composer create-project && \
chmod -R 777 /var/www/html/storage