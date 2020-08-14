FROM alpine:3.6
MAINTAINER Hevi hevi.ye@qq.com

COPY app /app/app

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
	apk update && \
	apk add ca-certificates musl-dev && \
	apk add tzdata

EXPOSE 8080

CMD cd /app && ./app -path /mov -port 8080 
