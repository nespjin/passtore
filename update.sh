#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

auto_input_pwd(){

      #param="ls -l"

       cmd=`echo "jin" |sudo -S ${1}`

       echo "$cmd"

}

echo '>>>>授权....'
chmod -R 777 ./.git
echo '>>>>删除Ｇit....'
rm -r ./.git
echo '>>>>初始化Git....'
git init
echo '>>>>添加至Git缓存区....'
git add --all
echo '>>>>提交....'
git commit -am "update"
echo '>>>>添加远程仓库....'
# git remote add origin git@gitee.com:nesp/passstore.git
git remote add origin https://github.com/nespjin/passstore.git
echo '>>>>推送至远程仓库....'
# git push -vf origin master
git push -vf origin master

# echo '>>>>建立Pages....'
# curl -X POST --header 'Content-Type: application/json;charset=UTF-8' 'https://gitee.com/api/v5/repos/nesp/passstore/pages/builds' -d '{"access_token":"733390195c3af5a63cb20c9d0436a42c"}'

