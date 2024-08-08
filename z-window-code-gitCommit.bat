@echo off

:: 这里是单独更新仓库的git 微型工具，只要输入commit 在远程没有冲突的情况下可以快速进行 push 操作

:: 定义时间变量 2020-04-28 10:18:31
set timeStamp=%date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%

:: 这里是单独更新仓库的git 微型工具，只要输入commit 在远程没有冲突的情况下可以快速进行 push 操作
cd %~dp0
echo input you commit
set /p commitMsg=
git add ./
git commit -m "%commitMsg% %timeStamp%"
git push
pause
