import { defineConfig, loadEnv } from "vite";
import vue from "@vitejs/plugin-vue";

export default defineConfig(({ mode }) => {
  // 加载对应环境的变量
  const env = loadEnv(mode, process.cwd());

  return {
    plugins: [vue()],
    // 动态设置公共路径
    base: env.VITE_BASE_PATH,
    // 其他配置...
    server: {
      port: 3001,
    },
  };
});
