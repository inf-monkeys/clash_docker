# Clash Docker 镜像

> 此项目基于 [https://github.com/wnlen/clash-for-linux](https://github.com/wnlen/clash-for-linux)。

## 配置文件 


见：[.env.example](./.env.example)

```sh
cp .env.example .env
```

填入你的 clash 订阅地址。

## 构建镜像

```sh
docker build . -t infmonkeys/clash:latest
```

## 运行镜像

```sh
docker run --name clash -p 7890:7890 -p 9090:9090 -d -v ./.env:/app/clash-for-linux/.env infmonkeys/clash 
```