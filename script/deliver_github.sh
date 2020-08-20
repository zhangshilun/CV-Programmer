cd /home/blog/
hugo --config config_github.toml
rm -rf CV-Programmer/docs/
cp -r public/ CV-Programmer/docs/
cd CV-Programmer/
git add docs/
git commit -m "updates $(date)"
git push origin master
echo 'success'
