# 更新日志
## [1.0.0](https://github.com/Jonasenjobana//compare/v0.2.0...v1.0.0) (2025-11-27)

## [0.2.0](https://github.com/Jonasenjobana//compare/v0.1.1...v0.2.0) (2025-11-27)

### 0.1.1 (2025-11-27)


### CI/CD

* 更新 CI/CD 配置以使用 pnpm/action-setup ([4c21caa](https://github.com/Jonasenjobana//commit/4c21caa5d670ffc7ca86cbb31bc9d913954cfcd4))
* 更新CI/CD配置中的Node.js版本和pnpm安装方式 ([9e492da](https://github.com/Jonasenjobana//commit/9e492da55e3e46f640d7185246064cd2d988254a))
* **workflow:** 更新部署路径为 packages/pkg-1/dist ([e1b05f8](https://github.com/Jonasenjobana//commit/e1b05f88dfd40f6dcc29f50df3970956edf2213d))
* **workflow:** 将触发分支从main改为master ([c6eb5f5](https://github.com/Jonasenjobana//commit/c6eb5f56e7e4b8e3abc577fecf5dfec36a3cbabc))
* **workflow:** 添加锁定依赖版本的安装步骤 ([55e6572](https://github.com/Jonasenjobana//commit/55e6572a4cab70a1d309e97816c8a3dd21191c11))


### 修复

* 使用pnpm官方action修复CI/CD中pnpm无法找到的问题 ([512c29c](https://github.com/Jonasenjobana//commit/512c29ca9d5b0d1408633493bcc43c12f6bbd835))
* 替换pnpm为npm以解决GitHub Actions执行错误 ([caf8ea9](https://github.com/Jonasenjobana//commit/caf8ea99b9de293a32b7dced56408b85d9d5103b))
* 添加pkg-2预构建步骤以解决构建依赖问题 ([9130249](https://github.com/Jonasenjobana//commit/9130249b95c961a71f1dea1bc6d7a53103151a84))


### 新功能

* 添加GitHub Pages自动化部署配置 ([55e2f56](https://github.com/Jonasenjobana//commit/55e2f56bdb96ab771c15187217d046e316771c23))
* **build:** 添加 github 构建模式并更新构建脚本 ([69f08b6](https://github.com/Jonasenjobana//commit/69f08b69f5f9b4758cc18f88642af2e9150e0d69))
* **ci:** 优化GitHub Pages部署流程并简化CI配置 ([3da58a7](https://github.com/Jonasenjobana//commit/3da58a7bb036a92922c86cee96e1ab7a3d6b28be))


### 其他

* 初始化自动化流程配置 ([4d81057](https://github.com/Jonasenjobana//commit/4d81057ef4367d42f0941d8764994da89bbc6ebe))
* 从.gitignore中移除pnpm-lock.yaml ([95791be](https://github.com/Jonasenjobana//commit/95791be7898bbfc597c9934e52692adc7c20f778))
* 添加 pkg-1 的 GitHub 构建脚本 ([a63277d](https://github.com/Jonasenjobana//commit/a63277dc82620b6388c546487f488d58d8aa4d2b))
* 添加版本号到package.json ([4625d0a](https://github.com/Jonasenjobana//commit/4625d0ab89f2248babe2a7930b4b452389a82b29))

# 更新日志

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.