# 自动化流程使用指南

本文档介绍了项目中配置的自动化CI/CD流程和版本管理工具的使用方法。

## 1. GitHub Actions 自动化流程

项目已配置GitHub Actions工作流，会在以下情况下自动运行：

- 推送到 `main` 或 `master` 分支
- 创建针对 `main` 或 `master` 分支的Pull Request

### 工作流内容

工作流会执行以下任务：
1. 检出代码（包含完整git历史）
2. 设置Node.js环境
3. 安装依赖
4. 构建所有包
5. 在主分支上自动更新版本和生成变更日志
6. 推送更新和标签到远程仓库

## 2. 本地版本管理和变更日志生成

### 提交信息规范

为了能够正确生成变更日志，请遵循以下提交信息格式：

```
<type>: <description>

[optional body]

[optional footer]
```

其中 `<type>` 可以是以下之一：

- `feat`: 新功能
- `fix`: 修复bug
- `docs`: 文档更新
- `style`: 样式修改
- `refactor`: 代码重构
- `perf`: 性能优化
- `test`: 测试相关
- `build`: 构建系统相关
- `ci`: CI/CD配置相关
- `chore`: 其他变更

### 使用命令行工具

项目提供了以下npm脚本用于版本管理：

```bash
# 查看变更日志预览（不会实际修改文件）
pnpm run changelog

# 自动决定版本号（默认patch）
pnpm run release

# 发布patch版本（小版本修复）
pnpm run release:patch

# 发布minor版本（添加新功能）
pnpm run release:minor

# 发布major版本（不兼容的API变更）
pnpm run release:major
```

### 使用自动化脚本

项目还提供了自动化脚本，简化版本发布流程：

#### Windows系统

```batch
# 发布patch版本（默认）
scripts\release.bat

# 发布指定类型的版本
scripts\release.bat minor
scripts\release.bat major
```

#### Linux/Mac系统

```bash
# 确保脚本有执行权限
chmod +x scripts/release.sh

# 发布patch版本（默认）
./scripts/release.sh

# 发布指定类型的版本
./scripts/release.sh minor
./scripts/release.sh major
```

自动化脚本会执行以下操作：
1. 检查git状态（确保没有未提交的更改）
2. 拉取最新代码
3. 运行构建确保一切正常
4. 生成版本和变更日志
5. 推送到远程仓库

## 3. 自定义配置

版本管理的配置位于 `.versionrc.json` 文件中，您可以根据需要修改以下内容：

- 提交类型（types）及其对应的分类
- 变更日志格式
- 链接格式

## 4. 注意事项

1. 确保您的GitHub仓库已正确配置，并且有GitHub Actions权限
2. 首次使用前，确保项目有一个初始版本标签（可以手动创建）
3. 团队成员应统一遵循提交信息规范，以便正确生成变更日志
4. 发布新版本前，确保所有CI/CD检查都已通过

## 5. 故障排除

### 常见问题

1. **变更日志未包含某些提交**
   - 检查提交信息是否符合规范格式
   - 确保提交已被推送到正确的分支

2. **GitHub Actions构建失败**
   - 检查依赖安装是否正确
   - 确保构建命令在本地能够成功执行

3. **版本号更新问题**
   - 确保git工作区是干净的（没有未提交的更改）
   - 检查是否有足够的权限推送更改和标签