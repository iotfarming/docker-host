FROM docker.elastic.co/beats/filebeat:7.6.2
# Copy custom configuration file
COPY filebeat.yml /usr/share/filebeat/filebeat.yml

USER root

RUN chown -R root /usr/share/filebeat/
RUN chmod -R go-w /usr/share/filebeat/