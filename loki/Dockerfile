# syntax = docker/dockerfile:1.4.0
FROM alpine:3.20

# docker build -t loki:3.1.1 --build-arg="VERSION=3.1.1"
ARG VERSION=v3.1.1

LABEL AUTHOR="Cloorc" EMAIL="<wittcnezh@foxmail.coms>"

WORKDIR /opt

RUN apk add --no-cache --update-cache bash curl && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /opt/loki && \
    mkdir -p /opt/loki-retention && \
    mkdir -p /opt/loki-chunks

RUN curl -skSL https://github.com/grafana/loki/releases/download/${VERSION}/loki-linux-amd64.zip | busybox unzip -

RUN chmod +x loki-linux-amd64

RUN cat <<EOF > /opt/config.yaml
auth_enabled: false

analytics:
  reporting_enabled: false

common:
  ring:
    instance_addr: 0.0.0.0
    kvstore:
      store: inmemory
  replication_factor: 1
  path_prefix: /opt/loki

compactor:
  working_directory: /opt/loki-retention
  compaction_interval: 1h
  retention_enabled: true
  retention_delete_delay: 48h
  retention_delete_worker_count: 2
  delete_request_store: filesystem

schema_config:
  configs:
  - from: 2020-05-15
    store: tsdb
    object_store: filesystem
    schema: v13
    index:
      prefix: index_
      period: 24h

storage_config:
  filesystem:
    directory: /opt/loki-chunks
EOF

VOLUME [ "/opt/loki", "/opt/loki-retention", "/opt/loki-chunks" ]

CMD [ "/opt/loki-linux-amd64", "-config.file", "/opt/config.yaml" ]

ENV LANG=en_US.UTF-8
