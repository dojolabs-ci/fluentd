FROM gcr.io/google-containers/fluentd-elasticsearch:v2.3.1
RUN fluent-gem install fluent-plugin-kafka fluent-plugin-mqtt-io
#RUN apk add --no-cache logrotate
RUN apt-get update && apt-get install -y cron logrotate
COPY logrotate.conf /etc/logrotate.conf
