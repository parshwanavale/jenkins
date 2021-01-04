FROM ubuntu:latest

RUN apt-get update && apt-get -y install cron

COPY cron-file /etc/cron.d/cron-file

RUN chmod 0644 /etc/cron.d/cron-file

RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log
