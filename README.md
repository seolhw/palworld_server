# 幻兽帕鲁（palworld）Docker 私服


## 部署方法

> 幻兽帕鲁官方推荐4C8G，常规要求是4C16G,最佳配置是4G32G内存。

1. 找一台 Linux Ubuntu 22机器，可以是云，也可以是本地
2. 执行命令
``` Bash
sudo docker run -d --restart=always   -v /root/palworld/Saved:/home/steam/Steam/steamapps/common/PalServer/Pal/Saved  -p 8211:8211/udp --name pal-server seolhw/pal-server 

```
3. 用 IP:8211 的方式去客户端测试连接


> 也可以自己打包镜像，本仓库也提供了 Dockerfile 文件
>

## 注意事项
1. 如果选择自己打包镜像的话，不能使用 windows 机器来打包
2. IP:端口，要确保被本地机器能够访问到，
   1. 端口：如果是云服务器，则一般修改安全组，开放 8211 端口，协议选择 UDP，允许所有IP
   2. IP：如果是云服务器，则使用公网IP
