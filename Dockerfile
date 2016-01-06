FROM alpine:latest
MAINTAINER trotro
RUN apk --update add nodejs
RUN npm install -g todoist-habitrpg
RUN mkdir -p /app
RUN mkdir -p /app/data
COPY task-sync.sh /app/
WORKDIR /app
ENTRYPOINT ["/app/task-sync.sh"]