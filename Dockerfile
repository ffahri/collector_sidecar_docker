FROM debian
RUN mkdir /etc/graylog
ADD collector-sidecar /etc/graylog/collector-sidecar
ADD filebeat /usr/bin/filebeat
RUN chmod +x /usr/bin/filebeat
RUN mkdir /usr/share/graylog/
ADD gcs /usr/bin/gcs
RUN chmod go-w /etc/graylog/collector-sidecar/generated/filebeat.yml
CMD ["gcs"]
