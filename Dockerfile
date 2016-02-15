# From latest NGINX Docker
FROM nginx:latest

# Expose Port 80, default http, to openshift enviroment
EXPOSE 80

# Volume for Storage
VOLUME ["/var/www/"]
