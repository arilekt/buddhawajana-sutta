@echo off
REM 🚀 สคริปต์สำหรับล้าง main แล้ว push โปรเจกต์ MDX นี้ขึ้น GitHub (แทนที่ main เดิมทั้งหมด)

echo Preparing to replace branch 'main' with local content...

REM ตั้งค่า repository URL และชื่อผู้ใช้ตามจริง
SET REPO_URL=https://github.com/arilekt/buddhawajana-sutta.git
SET COMMIT_USER_NAME=arilekt
SET COMMIT_USER_EMAIL=arilek.tummontree@gmail.com

REM git init
git remote remove origin 2>nul
git remote add origin %REPO_URL%

git config user.name "%COMMIT_USER_NAME%"
git config user.email "%COMMIT_USER_EMAIL%"

git checkout -B main
git add .
git commit -m "🚀 Replace main branch with deploy-ready buddhawajana-sutta"
git push --force origin main

echo.
echo ✅ Deployment to main branch complete.
pause