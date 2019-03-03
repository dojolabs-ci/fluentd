FROM fluent/fluentd
RUN fluent-gem install fluent-plugin-kafka
RUN apk add --no-cache logrotate
COPY logrotate.conf /etc/logrotate.conf
