ARG BUILD_FROM=homeassistant/aarch64-base:latest
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Build and install the ser2sock application
RUN \
  apk add --no-cache build-base git openssl-dev jq && \
  cd /tmp && \
  git clone https://github.com/nutechsoftware/ser2sock.git && \
  cd ser2sock && \
  ./configure && \
  make && \
  cp ser2sock /usr/local/bin/ && \
  cp -R etc/ser2sock /etc/ && \
  cd .. && \
  rm -rf ser2sock

WORKDIR /

# Copy run script

COPY run.sh /app/start.sh
COPY ser2sock.conf /etc/
RUN chmod a+x /app/start.sh
ENTRYPOINT ["/app/start.sh"]

LABEL io.hass.version="VERSION" io.hass.type="addon" io.hass.arch="armhf|aarch64|i386|amd64"

