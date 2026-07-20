#!/bin/sh

UUID="${UUID:-f47ac10b-58cc-4372-a567-0e02b2c3d479}"
WS_PATH="${WS_PATH:-/@SV_GCP}"
PORT="${PORT:-8080}"

sed -i "s/REPLACE_PORT/${PORT}/g" /etc/xray/config.json
sed -i "s/REPLACE_UUID/${UUID}/g" /etc/xray/config.json
sed -i "s|REPLACE_PATH|${WS_PATH}|g" /etc/xray/config.json

echo "✅ تشغيل Xray على المنفذ ${PORT}"
cat /etc/xray/config.json

exec xray -config /etc/xray/config.json