FROM php-fpm as base

FROM nginx

ENV UNAME=webserver

RUN apt-get update \
    && apt-get install -y curl nano \
    && apt-get clean \
    && apt-get autoremove -y --purge

# copy nginx virtual host configuration for the prokect
COPY .docker/nginx/default.conf /etc/nginx/conf.d/default.conf

WORKDIR /app
