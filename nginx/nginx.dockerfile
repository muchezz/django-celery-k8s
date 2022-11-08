FROM nginx:stable-alpine

COPY conf.d/default.conf /etc/nginx
COPY conf.d/default.conf /etc/nginx/conf.d

EXPOSE 80