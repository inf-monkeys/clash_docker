FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    vim \
    wget \
    git

WORKDIR /app

RUN git clone https://github.com/wnlen/clash-for-linux/

WORKDIR /app/clash-for-linux

CMD bash start.sh; tail -f /app/clash-for-linux/logs/clash.log
