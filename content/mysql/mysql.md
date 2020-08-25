---
title: "mysql5.7 安装配置"
date: 2020-08-24T15:28:24+08:00
lastmod: 2020-08-24T15:28:24+08:00
author: 今晚打老虎
cover: /img/night-moon.jpg
categories:
  - mysql
tags:
  - linux
  - centos
draft: true
---

<!--more-->
mysql安装配置

1. http://dev.mysql.com/downloads/mysql/ 下载linux通用版 mysql-×××××.tar.gz

2. 解压ar -xvf mysql-×××××.tar.gz

3. 重命名 rename -v mysql-××××× mysql mysql-×××××

4. 建立data文件夹

    cd mysql
    mkdir data

5. 新建mysql用户组

    groupadd -g 1000 mysql

6. 新建msyql用户禁止登录shell

    useradd -r -s /sbin/nologin -g mysql mysql -d /home/mysql
    
7. 改变目录属有者

    chown -R mysql .
    chgrp -R mysql .

8. 配置参数，执行完成后记住最后的随机密码 A temporary password is generated for root@localhost: 0mtarY?fLeIs

    bin/mysqld --initialize --user=mysql --basedir=/home/mysql --datadir=/home/mysql/data/
    
    bin/mysql_ssl_rsa_setup --datadir=/home/mysql/data/

9. 开机启动

    cp mysql.server /etc/init.d/mysql

10. 修改baseurl dataurl

    vim /etc/init.d/mysql

11. 启动

    /etc/init.d/mysql start

12. 登录 

    mysql -hlocalhost -uroot -p

    如果出现：-bash: mysql: command not found 执行 ln -s /home/mysql/bin/mysql /usr/bin

13. 修改密码

    set password=password('111111');

14. 设置远程连接（一般会有两个root用户，%的为远程连接用户，localhost为本地用户，密码独立）

    grant all privileges on *.* to 'root'@'%' identified by 'root';
    flush privileges;
    
15. 测试连接

    mysql> use mysql;
    mysql> select host,user from user;

16. 远程连接测试，如提示不能成功连接，可能需要添加需要监听的端口

    /sbin/iptables -I INPUT -p tcp --dport 3306 -j ACCEPT
