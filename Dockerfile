# Use the official Prometheus Docker image as the base image
FROM prom/prometheus:latest

# (Optional) Copy your custom Prometheus configuration
# COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus's default port (default is 9090)
EXPOSE 9090

# Start Prometheus when the container is run
ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--config.file=/etc/prometheus/prometheus.yml", \
             "--storage.tsdb.path=/prometheus", \
             "--web.console.libraries=/usr/share/prometheus/console_libraries", \
             "--web.console.templates=/usr/share/prometheus/consoles" ]
