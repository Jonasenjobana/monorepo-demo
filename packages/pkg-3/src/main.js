import { createApp } from 'vue'
import App from './App.vue'
import pkg2 from 'pkg-2'
// 显式导入pkg-2的样式
import 'pkg-2/dist/style.css'

const app = createApp(App)
app.use(pkg2)
app.mount('#app')