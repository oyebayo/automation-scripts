@echo off
set dirlist=build\web build\app build\console build\service data\schema data\sample docs\manuals docs\specs code lib res
set commit_message=Initialize repository with folder structure
mkdir %1
cd %1
git init
mkdir %dirlist%
for %%i in (. %dirlist%) do echo.>%%i\.gitignore
echo.>README.md
git add -A
git commit -m "%commit_message%"
cd ..
