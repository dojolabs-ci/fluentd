FROM fluent/fluentd
RUN apk add --no-cache logrotate
COPY logrotate.conf /etc/logrotate.conf
