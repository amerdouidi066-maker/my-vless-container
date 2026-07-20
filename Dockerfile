FROM xtls/xray-core:latest

RUN mkdir -p /etc/xray

COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENV UUID="aaaa1111-bbbb-4ccc-8ddd-eeeeffff0000"
ENV WS_PATH="/Telegram/@AM2_D3/@AHMAD3214"
ENV PORT=8080

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
