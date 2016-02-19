FROM nginx:latest


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

USER["1000050000:1000050000"]


# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE ["80","443"]
