FROM openjdk:17-jdk-slim

RUN apt-get update && \
    apt-get install -y maven gradle && \
    apt-get clean;

WORKDIR /workspace

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
