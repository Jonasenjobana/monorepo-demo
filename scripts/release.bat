@echo off
setlocal enabledelayedexpansion

REM 检查git状态
echo 检查git状态...
for /f %%i in ('git status --porcelain') do (
    set git_status=%%i
    goto :has_changes
)

:check_version_type
REM 检查参数决定版本类型
set VERSION_TYPE=patch
if "%1"=="patch" set VERSION_TYPE=patch
if "%1"=="minor" set VERSION_TYPE=minor
if "%1"=="major" set VERSION_TYPE=major

if not "%1"=="" if not "%1"=="patch" if not "%1"=="minor" if not "%1"=="major" (
    echo 错误: 版本类型必须是 patch、minor 或 major
    echo 用法: release.bat [patch^|minor^|major]
    exit /b 1
)

REM 拉取最新代码
echo 拉取最新代码...
git pull --rebase
if errorlevel 1 (
    echo 错误: git pull 失败
    exit /b 1
)

REM 运行构建确保一切正常
echo 运行构建...
pnpm run build
if errorlevel 1 (
    echo 错误: 构建失败
    exit /b 1
)

REM 生成并提交版本和变更日志
echo 生成%VERSION_TYPE%版本更新...
if "%VERSION_TYPE%"=="patch" pnpm run release:patch
if "%VERSION_TYPE%"=="minor" pnpm run release:minor
if "%VERSION_TYPE%"=="major" pnpm run release:major
if errorlevel 1 (
    echo 错误: 版本更新失败
    exit /b 1
)

REM 推送更改到远程仓库
echo 推送更改到远程仓库...
git push --follow-tags
if errorlevel 1 (
    echo 错误: git push 失败
    exit /b 1
)

echo 版本发布成功！
exit /b 0

:has_changes
echo 错误: 有未提交的更改，请先提交或暂存您的更改。
echo 未提交的更改:
git status --porcelain
exit /b 1