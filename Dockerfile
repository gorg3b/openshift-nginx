FROM nginx:latest


# Prepare nginx for Openshift (change path of the conf Variables) & disable nginx daemon-mode
RUN echo \
  "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  ln -s /etc/nginx/conf.d/ /usr/share/nginx/conf.d

# Define mountable directories.
VOLUME ["/usr/share/nginx"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
