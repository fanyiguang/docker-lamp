# docker-lamp
####docker lamp一键环境搭建

需要安装docker和docker-compose：
安装方法：http://get.daocloud.io/

启动命令：
```bash
$ docker-compose -f docker-compose.yml up -d
```

网站代码放在www文件下，如果有端口冲突问题请自行到docker-compose.yml中修改对应的端口
