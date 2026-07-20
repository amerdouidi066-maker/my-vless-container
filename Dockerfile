FROM v2fly/v2fly-core:latest

RUN mkdir -p /etc/v2ray

COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENV UUID="f47ac10b-58cc-4372-a567-0e02b2c3d479"
ENV WS_PATH="/@SV_GCP"
ENV PORT=8080

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
