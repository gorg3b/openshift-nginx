# From latest NGINX Docker
FROM nginx:latest

# Expose Port 80, default http, to openshift enviroment
EXPOSE 80

# Run as root
USER root:root

# Volume for Storage
VOLUME ["/var/www/"]
