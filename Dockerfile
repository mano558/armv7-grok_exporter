FROM arm32v7/golang:latest

ENV GROK_ARCH="grok_exporter-0.2.7.linux-arm32v6"
ENV GROK_VERSION="v0.2.7"

COPY * /tmp/

RUN /tmp/install.sh

# Path to directory where to get the configuration :
VOLUME /grok/

# Path to directory where to store the data :
VOLUME /var/grok/

EXPOSE 9144

CMD ["/grok/grok_exporter", "-config", "/grok/config.yml"]
