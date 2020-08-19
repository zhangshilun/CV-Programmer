# cvprogrammer

hugo --config config_github.toml


rm -rf CV-Programmer/docs/


cp -r public/. CV-Programmer/docs/


git add docs/


git commit -m "updates $(date)"


git push origin master
