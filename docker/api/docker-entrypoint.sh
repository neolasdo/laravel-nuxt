#!/bin/sh
# Exit on fail
set -e
chown -R www-data:www-data /app/storage
[ -f /root/.ssh/config ] && chmod 600 /root/.ssh/config
[ -f /root/.ssh/romu_dev ] && chmod 400 /root/.ssh/romu_dev

php-fpm
# Finally call command issued to the docker service
exec "$@"
