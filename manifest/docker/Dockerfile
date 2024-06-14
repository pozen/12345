FROM FROM golang:alpine as build

###############################################################################
#                                build
###############################################################################

ENV WORKDIR  /release
ADD . .

RUN GOOS=linux CGO_ENABLED=0 GOARCH=amd64 go build -ldflags="-s -w" -o dotblue main.go

RUN chmod +x $WORKDIR/dotblue

###############################################################################
#                                   run
###############################################################################
FROM scratch as prod

# 在build阶段复制时区到
#COPY --from=build /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# 在build阶段复制可执行的go二进制文件app
COPY --from=build /release/dotblue /
# 在build阶段复制配置文件
COPY --from=build /release/manifest/config /config

# 启动服务
CMD ["/dotblue", "-c", "/config/config.yaml"]