
FROM alpine:latest

RUN apk add --no-cache curl
RUN apk add bash
RUN curl -fsSL -o /usr/local/bin/dbmate https://github.com/amacneil/dbmate/releases/latest/download/dbmate-linux-amd64 && chmod +x /usr/local/bin/dbmate
RUN mkdir db && mkdir db/migrations
COPY db/migrations db/migrations
