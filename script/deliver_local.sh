#!/bin/bash
cd /home/blog/
rm -rf content/ static/ themes/ config.toml config_github.toml
cd /home/blog/CV-Programmer/
git pull
cp -r content/ /home/blog/content/
cp -r static/ /home/blog/static/
cp -r themes/ /home/blog/themes/
cp -r config/config.toml /home/blog/config.toml
cp -r config/config_github.toml /home/blog/config_github.toml
cd /home/blog/
nohup hugo server -D --bind "0.0.0.0" --baseUrl "http://124.70.70.52:1313/" &
echo 'success'
