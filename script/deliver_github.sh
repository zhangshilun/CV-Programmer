#!/bin/bash
cd /home/blog/
hugo -D -d public_github --config config_github.toml
rm -rf CV-Programmer/docs/
cp -r public_github/ CV-Programmer/docs/
cd CV-Programmer/
git add docs/
git commit -m "updates $(date)"
git push origin master
echo 'success'

