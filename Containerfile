# Containerfile to build a customized drupal app
#v4 is built from drupal version that requires php 8.1, later versions require php8.3
FROM quay.io/cmalafis/drupal:v4
COPY src .
#RUN chmod 666 sites/default/settings.php
