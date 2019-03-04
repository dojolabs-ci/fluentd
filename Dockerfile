FROM gcr.io/google-containers/fluentd-elasticsearch:v2.3.1
RUN fluent-gem install fluent-plugin-kafka
RUN apk add --no-cache logrotate
COPY logrotate.conf /etc/logrotate.conf
