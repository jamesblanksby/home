FROM php:7.4-fpm

RUN apt-get update && \
    apt-get install -y \
        cron

RUN docker-php-ext-install \
    mysqli

RUN touch /var/log/schedule.log
RUN chmod 0777 /var/log/schedule.log

ADD $PWD/conf/cron.d/schedule /etc/cron.d/schedule
RUN crontab /etc/cron.d/schedule

CMD ["cron", "-f"]
