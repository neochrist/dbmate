
FROM alpine:latest

RUN apk add --no-cache curl
RUN apk add bash
COPY ./shell.sh /
RUN curl -fsSL -o /usr/local/bin/dbmate https://github.com/amacneil/dbmate/releases/latest/download/dbmate-linux-amd64 && chmod +x /usr/local/bin/dbmate
RUN mkdir db && mkdir db/migrations
COPY db/migrations db/migrations
RUN apk update && apk add mysql-client
RUN apk add mariadb-connector-c-dev

ENTRYPOINT ["/shell.sh"]
