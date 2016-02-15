FROM nginx:latest


USER 1000050000:1000050000


EXPOSE 80


VOLUME ["/var/www/"]

CMD ["/etc/init.d/nginx start"]
