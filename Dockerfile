FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

ADD docs/.vitepress/dist  /usr/share/nginx/html/mirror/vite

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]