# 使用官方的 Ubuntu 镜像作为基础
FROM cm2network/steamcmd


RUN ./steamcmd.sh +login anonymous +app_update 2394010 validate +quit

WORKDIR /home/steam/Steam/steamapps/common/PalServer

VOLUME ["/home/steam/Steam/steamapps/common/PalServer/Pal/Saved"]

# 运行 steamcmd（可根据实际需要修改）
CMD ["./PalServer.sh"]
