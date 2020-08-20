#!/bin/bash
cd /home/blog/CV-Programmer/
git pull
rm -rf /home/blog/content/
rm -rf /home/blog/config.toml
rm -rf /home/blog/config_github.toml
cp -r content/ /home/blog/content/
cp -r config.toml /home/blog/config.toml
cp -r config_github.toml /home/blog/config_github.toml
cd /home/blog/
nohup hugo server -D --bind "0.0.0.0" --baseUrl "http://124.70.70.52:1313/" &
echo 'success'
