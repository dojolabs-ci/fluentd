FROM fluent/fluentd

RUN gem install fluent-plugin-mqtt-io fluent-plugin-elasticsearch fluent-plugin-netflow

#MQTT
ENV MQTT_HOST="vernemq"
ENV MQTT_PORT="1883"
ENV MQTT_TOPIC="snort"

#elasticsearch
ENV ELASTICSEARCH_HOST="elasticsearch"
ENV ELASTICSEARCH_PORT="9200"
ENV ELASTICSEARCH_INDEX_PREFIX="snort"

#netflow
ENV NETFLOW_PORT="4739"
ENV NETFLOW_DEFINITIONS=""
ENV NETFLOW_VERSIONS="[5, 9]"

ENV LOG_FILE_PATH=""

COPY config/*.conf /fluentd/etc/
