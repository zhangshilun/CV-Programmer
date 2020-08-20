---
title: "CentOS8 配置hugo个人博客"
date: 2020-08-19T15:28:24+08:00
lastmod: 2020-08-19T15:28:24+08:00
author: 今晚打老虎
cover: /img/night-moon.jpg
categories:
  - hugo
tags:
  - linux
  - centos
draft: true
---

<!--more-->
安装go

    yum -y install golang

添加epel repo

    vim /etc/yum.repos.d/hugo.repo
    
    [daftaupe-hugo]
    name=Copr repo for hugo owned by daftaupe
    baseurl=https://copr-be.cloud.fedoraproject.org/results/daftaupe/hugo/epel-8-$basearch/
    type=rpm-md
    skip_if_unavailable=True
    gpgcheck=1
    gpgkey=https://copr-be.cloud.fedoraproject.org/results/daftaupe/hugo/pubkey.gpg
    repo_gpgcheck=0
    enabled=1
    
安装hugo

    yum -y install hugo
    
新建一个新site
  
    hugo new site siteName
    
config.toml增加配置

    [taxonomies]
      category = "categories"
      tag = "tags"

启动命令
    
    nohup hugo server -D --bind "0.0.0.0" --baseUrl "http://IP:1313/" &
