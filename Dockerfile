FROM nginx:latest


USER daemon:daemon


EXPOSE 80


VOLUME ["/var/www/"]

CMD["/etc/init.d/nginx start"]
