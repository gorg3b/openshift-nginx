FROM nginx:latest


# Prepare nginx for Openshift (change path of the conf Variables) & disable nginx daemon-mode
RUN echo \

# Run nginx in fg (docker req)  
  "\ndaemon off;" >> /etc/nginx/nginx.conf && \
# Change the location of conf.d directory
  sed 's/etc/usr\/share/g' nginx.conf


# Define mountable directories.
VOLUME ["/usr/share/nginx"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
