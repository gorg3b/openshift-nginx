FROM nginx:latest

# install curl for debugging

RUN apt-get update && apt-get install -y


# Prepare nginx for Openshift (change path of the conf Variables) & disable nginx daemon-mode
RUN \
# Run nginx in fg (docker req)
  echo "\ndaemon off;"  >>  /etc/nginx/nginx.conf && \
# Change the location of conf.d directory
  sed --in-place 's/etc/usr\/share/g'  /etc/nginx/nginx.conf

# Define mountable directories.
VOLUME ["/usr/share/nginx"]

# Define working directory.
WORKDIR /usr/share/nginx


# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 8090
