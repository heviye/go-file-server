GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o app

docker login --username=hevi.ye@gmail.com registry.cn-shenzhen.aliyuncs.com
docker build -t registry.cn-shenzhen.aliyuncs.com/hevi/go-file-server:$1 . --no-cache
docker push registry.cn-shenzhen.aliyuncs.com/hevi/go-file-server:$1
