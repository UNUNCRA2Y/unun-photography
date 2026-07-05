@echo off
chcp 65001 >nul
set GIT="C:\Users\UNUN\.cache\codex-runtimes\codex-primary-runtime\dependencies\native\git\cmd\git.exe"
echo ============================================
echo  ? ????????? GitHub
echo ============================================
echo.
echo Token ???https://github.com/settings/tokens/new
echo Note: portfolio-deploy-v2
echo Scopes: ?? repo????
echo.
set /p TOKEN=?? Token ???: 
echo.
echo [1/3] ??? Git...
cd /d "%~dp0"
if not exist ".git" %GIT% init
%GIT% config user.name "UNUNCRA2Y"
%GIT% config user.email "120475390@qq.com"
echo.
echo [2/3] ???????...
%GIT% add -A
%GIT% commit -m "Update: full resolution photos"
echo.
echo [3/3] ??? GitHub?670MB ??????...
%GIT% remote remove origin 2>nul
%GIT% remote add origin https://%TOKEN%@github.com/UNUNCRA2Y/unun-photography.git
%GIT% branch -M main
%GIT% push -u origin main --force
echo.
echo ============================================
echo  ? ???
echo  https://ununcra2y.github.io/unun-photography/
echo.
echo  ? GitHub Pages ? 1-2 ????
echo ============================================
pause
