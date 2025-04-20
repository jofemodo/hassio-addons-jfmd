#!/bin/sh
set -e

CONFIG_PATH=/data/options.json

SERIAL_DEVICE=$(jq --raw-output ".serialDevice" $CONFIG_PATH)
BAUD_RATE=$(jq --raw-output ".baudRate" $CONFIG_PATH)
LISTEN_PORT=$(jq --raw-output ".port" $CONFIG_PATH)

echo Initializing ...
echo ser2net -C \"${LISTEN_PORT}:raw:600:${SERIAL_DEVICE}:${BAUD_RATE} NONE 1STOPBIT 8DATABITS XONXOFF -RTSCTS\" -c /etc/ser2net.conf -d

ser2net -C "${LISTEN_PORT}:raw:300:${SERIAL_DEVICE}:${BAUD_RATE} NONE 1STOPBIT 8DATABITS XONXOFF -RTSCTS" -c /etc/ser2net.conf -d
