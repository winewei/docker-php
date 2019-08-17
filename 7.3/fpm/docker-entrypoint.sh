#!/bin/bash
if [[ "${PARAMS}" == "nginx" ]]; then
        chown -R www.www /var/web/www
        /usr/local/openresty/nginx/sbin/nginx -g "daemon off;"
fi

if [[ "${PARAMS}" == "php" ]]; then
	    chown -R www.www /var/web/www
        if [[ "${ENABLE_LARAVEL_CONFIG_CACHE}" == "true" ]]; then
            php artisan config:cache
            php artisan route:cache
        fi
        find . -name "storage" -type d -exec chmod -R 777 {} \;
        find . -name "bootstrap" -type d -exec chmod -R 777 {} \;
        php-fpm
fi
exec "$@"
