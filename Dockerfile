FROM v2fly/v2fly-core:latest

# أنشئ المجلد المطلوب
RUN mkdir -p /etc/v2ray

# انسخ ملف الإعدادات
COPY config.json /etc/v2ray/config.json

# المنفذ
EXPOSE 8080

# تشغيل V2Ray
CMD ["v2ray", "-config", "/etc/v2ray/config.json"]