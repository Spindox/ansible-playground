FROM nginx:1.21.6-alpine
ENV  NGINX_ENTRYPOINT_QUIET_LOGS=1
COPY . /usr/share/nginx/html
EXPOSE 8080
ENTRYPOINT nginx -g "daemon off;" >dev/null 2>&1; echo "All ready, open your browser on http://localhost:8080"