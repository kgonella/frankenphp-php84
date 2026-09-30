# FrankenPHP + extensions PHP courantes + Composer. Aucun code applicatif, aucun secret.
FROM dunglas/frankenphp:1-php8.4

RUN install-php-extensions pdo_pgsql intl zip opcache apcu gd exif

COPY --from=composer/composer:2-bin /composer /usr/bin/composer
