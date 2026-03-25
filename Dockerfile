FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY docker/nginx.conf /etc/nginx/nginx.conf

COPY html/ /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]