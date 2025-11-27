# 分支保护规则配置指南

## 目标
确保 `master` 分支作为主分支，需要通过代码审核才能合并，所有开发工作都应在功能分支上进行。

## GitHub 分支保护规则设置步骤

1. 登录 GitHub 并进入项目仓库
2. 点击顶部导航栏中的 `Settings` 选项卡
3. 在左侧菜单中选择 `Branches`
4. 在 `Branch protection rules` 部分点击 `Add rule` 按钮
5. 在 `Branch name pattern` 输入框中输入 `master`
6. 启用以下保护规则：
   - [x] Require a pull request before merging
   - [x] Require approvals
     - 设置至少需要 1 个批准
   - [x] Dismiss stale pull request approvals when new commits are pushed
   - [x] Require status checks to pass before merging
     - 至少选择 CI/CD 工作流作为必须通过的检查
   - [x] Include administrators（可选，但推荐）

## 工作流程建议

1. **创建功能分支**：从 `master` 分支创建新的功能分支进行开发
   ```bash
   git checkout master
   git pull
   git checkout -b feature/your-feature-name
   ```

2. **开发与提交**：在功能分支上进行开发，使用规范化的提交信息
   ```bash
   git add .
   git commit -m "feat: 添加新功能描述"
   git push origin feature/your-feature-name
   ```

3. **创建 Pull Request**：开发完成后，在 GitHub 上创建从功能分支到 `master` 分支的 Pull Request

4. **代码审核**：等待指定的代码审核者（见 CODEOWNERS 文件）进行审核并批准

5. **合并 Pull Request**：审核通过后，将功能分支合并到 `master` 分支

6. **删除功能分支**：合并完成后，可以删除不再需要的功能分支
   ```bash
   git branch -d feature/your-feature-name
   git push origin --delete feature/your-feature-name
   ```

## 注意事项

- 请确保所有代码变更都通过 Pull Request 进行，不要直接推送到 `master` 分支
- 提交信息应遵循项目的提交规范（见 .commitlintrc 文件）
- 大型功能建议拆分为多个小型 Pull Request，便于审核