#!/bin/sh

# قيم ثابتة (لا تتغير)
UUID="f47ac10b-58cc-4372-a567-0e02b2c3d479"
WS_PATH="/@SV_GCP"
PORT="${PORT:-8080}"

sed -i "s/REPLACE_PORT/${PORT}/g" /etc/v2ray/config.json
sed -i "s/REPLACE_UUID/${UUID}/g" /etc/v2ray/config.json
sed -i "s|REPLACE_PATH|${WS_PATH}|g" /etc/v2ray/config.json

echo "✅ بدء تشغيل V2Ray مع:"
echo "   - PORT: ${PORT}"
echo "   - UUID: ${UUID}"
echo "   - PATH: ${WS_PATH}"

exec v2ray -config /etc/v2ray/config.json
