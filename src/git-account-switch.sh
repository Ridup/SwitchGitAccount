#!/bin/bash
echo "切换Git用户开始"
_old_user=`git config --global user.name`
echo "当前用户：$_old_user"
if [[ "Ridup" = ${_old_user} ]]
then
    git config --global user.name "XXX"
    git config --global user.email "XXX@XXX.cn"
else
    git config --global user.name "Ridup"
    git config --global user.email "XXX@XXX.com"
fi
_new_user=`git config --global user.name`
echo "切换Git用户${_new_user}结束"
ping -c 3 192.168.18.1
exec /bin/bash
