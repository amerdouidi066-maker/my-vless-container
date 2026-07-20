#!/bin/sh

# قيم ثابتة
UUID="f47ac10b-58cc-4372-a567-0e02b2c3d479"
WS_PATH="/@VS_GCP"
PORT="${PORT:-8080}"

# عرض القيم للتأكد (للسجلات)
echo "✅ بدء تشغيل V2Ray مع:"
echo "   - PORT: ${PORT}"
echo "   - UUID: ${UUID}"
echo "   - PATH: ${WS_PATH}"

# استبدال المتغيرات في config.json
sed -i "s/REPLACE_PORT/${PORT}/g" /etc/v2ray/config.json
sed -i "s/REPLACE_UUID/${UUID}/g" /etc/v2ray/config.json
sed -i "s|REPLACE_PATH|${WS_PATH}|g" /etc/v2ray/config.json

# عرض محتوى config.json للتأكد (للسجلات)
echo "📄 محتوى config.json بعد الاستبدال:"
cat /etc/v2ray/config.json

# تشغيل V2Ray
echo "🚀 تشغيل V2Ray..."
exec v2ray -config /etc/v2ray/config.json