import Button from './components/Button.vue'
import Input from './components/Input.vue'
// 导入组件样式
import './components/Button.vue'
import './components/Input.vue'

export {
  Button,
  Input
}

export default {
  install: (app) => {
    app.component('MyButton', Button)
    app.component('MyInput', Input)
  }
}