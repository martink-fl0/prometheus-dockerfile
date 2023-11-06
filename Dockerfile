# Use the official Prometheus Docker image as the base image
FROM prom/prometheus:latest

# (Optional) Copy your custom Prometheus configuration
# COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus's default port (default is 9090)
EXPOSE 9090

# Start Prometheus when the container is run
# CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
CMD ["/bin/prometheus"]
