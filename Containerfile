# Containerfile to build a customized drupal app
#v4 is built from drupal version that requires php 8.1, later versions require php8.3
FROM quay.io/cmalafis/drupal:v4
#COPY src .
USER root
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir -p /var/www/html/{htdocs,private}
COPY composer.json composer.lock .
RUN composer install --no-dev --optimize-autoloader --ignore-platform-reqs
RUN cp sites/default/default.settings.php sites/default/settings.php
RUN chmod 666 sites/default/settings.php
ADD private /var/www/html/private/
ADD htdocs /var/www/html/htdocs/
