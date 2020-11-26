#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.yourwebsite.com' > CNAME

echo "-------Begin Git-------"
#第一次发布执行
#git init

git status
git add -A
read -p "提交信息:" commitinfo
git commit -m $commitinfo


git commit -m result
#第一次发布执行
#git branch -M main
#第一次发布执行
# git remote add origin https://github.com/HvaiY/HvaiY.github.io.git
# 如果你想要部署到 https://USERNAME.github.io
git push -u origin main

# 如果发布到 https://USERNAME.github.io/<REPO>  REPO=github上的项目
# git push -f git@github.com:USERNAME/<REPO>.git master:gh-pages
echo "--------End Git--------"
cd -