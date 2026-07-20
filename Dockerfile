FROM teddysun/xray:latest

RUN mkdir -p /etc/xray

COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENV UUID="f47ac10b-58cc-4372-a567-0e02b2c3d479"
ENV WS_PATH="/@SV_GCP"
ENV PORT=8080

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]