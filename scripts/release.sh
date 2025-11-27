#!/bin/bash

set -e

# 检查git状态
echo "检查git状态..."
git_status=$(git status --porcelain)
if [ -n "$git_status" ]; then
  echo "错误: 有未提交的更改，请先提交或暂存您的更改。"
  echo "未提交的更改:"
  echo "$git_status"
  exit 1
fi

# 检查参数决定版本类型
VERSION_TYPE="patch"
if [ $# -eq 1 ]; then
  if [[ "$1" == "patch" || "$1" == "minor" || "$1" == "major" ]]; then
    VERSION_TYPE="$1"
  else
    echo "错误: 版本类型必须是 patch、minor 或 major"
    echo "用法: ./scripts/release.sh [patch|minor|major]"
    exit 1
  fi
fi

# 拉取最新代码
echo "拉取最新代码..."
git pull --rebase

# 运行构建确保一切正常
echo "运行构建..."
pnpm run build

# 生成并提交版本和变更日志
echo "生成$VERSION_TYPE版本更新..."
case "$VERSION_TYPE" in
  patch)
    pnpm run release:patch
    ;;
  minor)
    pnpm run release:minor
    ;;
  major)
    pnpm run release:major
    ;;
esac

# 推送更改到远程仓库
echo "推送更改到远程仓库..."
git push --follow-tags

echo "版本发布成功！"