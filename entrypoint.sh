#!/bin/sh

sed -i "s/REPLACE_PORT/${PORT:-8080}/g" /etc/xray/config.json
sed -i "s/REPLACE_UUID/${UUID}/g" /etc/xray/config.json
sed -i "s|REPLACE_PATH|${WS_PATH}|g" /etc/xray/config.json

echo "✅ تشغيل Xray مع:"
echo "   - PORT: ${PORT:-8080}"
echo "   - UUID: ${UUID}"
echo "   - PATH: ${WS_PATH}"

exec xray -config /etc/xray/config.json
