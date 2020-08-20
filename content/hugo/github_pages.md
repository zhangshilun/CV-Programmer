---
title: "使用github_pages发布hugo个人博客"
date: 2020-08-18T15:28:24+08:00
lastmod: 2020-08-18T15:28:24+08:00
author: 今晚打老虎
cover: /img/night-moon.jpg
categories:
  - hugo
tags:
  - linux
  - centos
  - github
draft: true
---

<!--more-->
在github新建仓库，名为 \<username>.github.io （每个用户只能建立一个） 其中 username 替换为 github 用户名

    
  
新建仓库 Settings 中，找到 GitHub Pages ，设置 Source 为 master 分支，后面选 / 或者 /docs ，这个是发布的目录

上述弄完就可以使用 \<username>.github.io 访问

这时设置的 / 或 /docs（没有自己建）下没有内容，将hugo生成的public文件夹推送到对应目录，再次访问即可。

可以自己写脚本半自动发布内容
