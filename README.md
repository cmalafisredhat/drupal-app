# drupal-app
sample drupal app deployment for openshift


the initial container image was built using s2i from https://github.com/drupal/drupal/tree/10.2.x using php-81 as the builder
command to build: s2i build https://github.com/drupal/drupal/ --ref=10.2.x registry.access.redhat.com/ubi9/php-81 drupal-image
