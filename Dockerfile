# ubuntu-base
#
# VERSION               0.0.1

FROM      gendosu/ubuntu-base:latest


MAINTAINER Gen Takahashi <gendosu@gmail.com>

RUN apt-get update \
&&  apt-get upgrade -y --force-yes \
&&  apt-get install -y --force-yes \
    libssl-dev \
    libreadline-dev \
    imagemagick \
    libmagick++-dev \
    libqtwebkit-dev \
    xvfb \
    libffi-dev \
    mysql-client \
    libmysqlclient-dev \
    libssl-dev \
    zip \
    vim \
    build-essential \
    apache2 \
    php \
    php-mysql \
&&  apt-get clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
