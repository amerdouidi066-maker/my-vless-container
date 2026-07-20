#!/bin/sh

sed -i "s/REPLACE_PORT/${PORT:-8080}/g" /etc/v2ray/config.json
sed -i "s/REPLACE_UUID/${UUID}/g" /etc/v2ray/config.json
sed -i "s|REPLACE_PATH|${WS_PATH}|g" /etc/v2ray/config.json

echo "✅ بدء تشغيل V2Ray مع:"
echo "   - PORT: ${PORT:-8080}"
echo "   - UUID: ${UUID}"
echo "   - PATH: ${WS_PATH}"

exec v2ray -config /etc/v2ray/config.json
