#!/bin/sh

# تأكد من وجود الأمر xray
if ! command -v xray > /dev/null 2>&1; then
    echo "❌ xray غير موجود! جاري البحث عن v2ray..."
    if command -v v2ray > /dev/null 2>&1; then
        echo "✅ تم العثور على v2ray"
        exec v2ray -config /etc/xray/config.json
    else
        echo "❌ لا يوجد xray ولا v2ray!"
        exit 1
    fi
else
    echo "✅ تم العثور على xray"
    # استبدال المتغيرات
    sed -i "s/REPLACE_PORT/${PORT:-8080}/g" /etc/xray/config.json
    sed -i "s/REPLACE_UUID/${UUID:-f47ac10b-58cc-4372-a567-0e02b2c3d479}/g" /etc/xray/config.json
    sed -i "s|REPLACE_PATH|${WS_PATH:-/@SV_GCP}|g" /etc/xray/config.json

    echo "📄 محتوى config.json بعد الاستبدال:"
    cat /etc/xray/config.json

    echo "🚀 تشغيل xray..."
    exec xray -config /etc/xray/config.json
fi