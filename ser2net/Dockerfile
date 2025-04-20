ARG BUILD_FROM=homeassistant/aarch64-base:latest
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install the ser2net application
RUN \
  apk add --no-cache ser2net jq

WORKDIR /

# Copy run script

COPY run.sh /app/start.sh
#COPY ser2net.conf /etc/
RUN chmod a+x /app/start.sh
ENTRYPOINT ["/app/start.sh"]

LABEL io.hass.version="VERSION" io.hass.type="addon" io.hass.arch="armhf|aarch64|i386|amd64"

