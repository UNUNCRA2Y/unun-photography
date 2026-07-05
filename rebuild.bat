@echo off
chcp 65001 >nul
set GIT="C:\Users\UNUN\.cache\codex-runtimes\codex-primary-runtime\dependencies\native\git\cmd\git.exe"
cd /d "%~dp0"
echo ============================================
echo  Trigger GitHub Pages Rebuild
echo ============================================
echo.
echo Token (????????):
set /p TOKEN=
if not "%TOKEN%"=="" %GIT% remote set-url origin https://%TOKEN%@github.com/UNUNCRA2Y/unun-photography.git
%GIT% add index.html
%GIT% commit -m "trigger rebuild"
%GIT% push
echo.
echo ? Done! 2?????:
echo https://ununcra2y.github.io/unun-photography/
pause
