FROM nginx:1.21.6-alpine
ENV  NGINX_ENTRYPOINT_QUIET_LOGS=1
COPY ./html /usr/share/nginx/html
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/docker-entrypoint.sh"]