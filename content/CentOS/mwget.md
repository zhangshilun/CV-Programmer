---
title: "CentOS 使用mwget解决wget下载慢"
date: 2020-08-20T14:35:24+08:00
lastmod: 2020-08-20T14:28:24+08:00
author: 今晚打老虎
cover: /img/night-moon.jpg
categories:
  - CentOS
tags:
  - linux
  - wget
  - mwget
draft: true
---

<!--more-->
下载mwget

    wget http://jaist.dl.sourceforge.net/project/kmphpfm/mwget/0.1/mwget_0.1.0.orig.tar.bz2
    
解压

    tar -xjvf mwget_0.1.0.orig.tar.bz2
    
执行配置检查

    cd mwget_0.1.0.orig
    ./configure
    
按照提示安装缺失

    yum install gcc-c++
    yum install intltool
    
最后安装
    
    make
    make install
    
使用

    mwget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
