FROM ubuntu:latest
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y redis-server
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server --protected-mode no"]