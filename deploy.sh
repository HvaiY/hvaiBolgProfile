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

# git init
# git commit -m "deploy"
# git branch -M main
# git remote add origin https://github.com/HvaiY/HvaiY.github.io.git
# git push -u origin main
# 第一次提交到存储库之后第二次执行
cd ../
git clone https://github.com/HvaiY/HvaiY.github.io.git 
cd dist
cp -r ./ ../HvaiY.github.io/
cd ../HvaiY.github.io
git add -A
read -p "提交信息:" commitinfo
git commit -m $commitinfo
git push -u origin main
cd ../
rm -rf HvaiY.github.io/

# gitee 第一次
# mkdir yuanlonghai
# cp ./dist/ ./yuanlonghai
# cd yuanlonghai
# git init
# git add -A
# git commit -m "初始化"
# git remote add origin https://gitee.com/yuanlonghai/yuanlonghai.git
# git push -u origin master
# cd ../
# rm -rf yuanlonghai
# git rebase remotes/origin/main
# git rebase --continue
#git merge main
# git remote rm origin 
# git push -u origin main

# git branch -M main
# git remote add origin https://github.com/HvaiY/HvaiY.github.io.git
# git pull

# # # 如果你想要部署到 https://USERNAME.github.io
# git push -u origin main

# 如果发布到 https://USERNAME.github.io/<REPO>  REPO=github上的项目
# git push -f git@github.com:USERNAME/<REPO>.git master:gh-pages
echo "--------End Git--------"
cd -