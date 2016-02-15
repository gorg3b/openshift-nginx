# From latest NGINX Docker
FROM nginx:latest

# Openshift User
USER 1000050000:1000050000

# Expose Port 80, default http, to openshift enviroment
EXPOSE 80

# Volume for Storage
VOLUME ["/var/www/"]
