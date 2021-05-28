# cxq
川湘情饭店

数据库表设计:https://ondras.zarovi.cz/sql/demo/



=======================git分支切换命令=============================

克隆远程仓库:  git clone githubSrc

在本地新建一个分支： git branch newBranch
切换到你的新分支: git checkout newBranch
创建并切换到新分支： git checkout -b newBranch
将新分支发布在github上： git push origin newBranch
在本地删除一个分支： git branch -d newBranch
在github远程端删除一个分支： git push origin :newBranch   (分支名前的冒号代表删除)

直接使用git pull和git push的设置,两种方式：意思是默认将本地的dev分支的推送到origin/dev
git branch --set-upstream-to=origin/dev dev
git branch --set-upstream dev origin/dev
git config --global push.default matching

===================================================================
