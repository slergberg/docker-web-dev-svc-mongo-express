# Base image
FROM mongo-express:0.54.0

# Base dependencies
RUN apk add --no-cache \
  curl

# Expose ports
EXPOSE 8081

# Healthcheck
ADD ./docker-healthcheck.sh /usr/local/bin/docker-healthcheck
RUN chmod +x /usr/local/bin/docker-healthcheck
HEALTHCHECK CMD docker-healthcheck
