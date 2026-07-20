FROM v2fly/v2fly-core:latest

RUN mkdir -p /etc/v2ray

COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENV UUID="aaaa1111-bbbb-4ccc-8ddd-eeeeffff0000"
ENV WS_PATH="/Telegram/@AM2_D3/@AHMAD3214"
ENV PORT=8080

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]

