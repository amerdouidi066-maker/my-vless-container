FROM python:3.9-slim
WORKDIR /app
RUN echo 'from http.server import HTTPServer, BaseHTTPRequestHandler\n\
class Handler(BaseHTTPRequestHandler):\n\
    def do_GET(self):\n\
        self.send_response(200)\n\
        self.end_headers()\n\
        self.wfile.write(b"OK")\n\
HTTPServer(("0.0.0.0", 8080), Handler).serve_forever()' > server.py
EXPOSE 8080
CMD ["python", "server.py"]