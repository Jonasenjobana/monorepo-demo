<template>
  <button 
    :class="[
      'ant-btn', 
      `ant-btn-${type}`,
      `ant-btn-${size}`,
      { 'ant-btn-block': block }
    ]"
    @click="$emit('click', $event)"
    :disabled="disabled"
  >
    <slot></slot>
  </button>
</template>

<script>
export default {
  name: 'MyButton',
  props: {
    type: {
      type: String,
      default: 'default',
      validator: (value) => [
        'default', 'primary', 'ghost', 'dashed', 'link', 'text', 'danger'
      ].indexOf(value) > -1
    },
    size: {
      type: String,
      default: 'middle',
      validator: (value) => ['large', 'middle', 'small'].indexOf(value) > -1
    },
    disabled: {
      type: Boolean,
      default: false
    },
    block: {
      type: Boolean,
      default: false
    }
  }
}
</script>

<style scoped>
.ant-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  position: relative;
  font-weight: 400;
  white-space: nowrap;
  text-align: center;
  background-image: none;
  box-shadow: 0 2px 0 rgba(0, 0, 0, 0.02);
  transition: all 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
  touch-action: manipulation;
  border: 1px solid transparent;
  cursor: pointer;
  user-select: none;
  -webkit-user-select: none;
  padding: 4px 15px;
  font-size: 14px;
  border-radius: 6px;
  height: 32px;
}

/* 尺寸样式 */
.ant-btn-lg {
  padding: 6.4px 15px;
  font-size: 16px;
  border-radius: 6px;
  height: 40px;
}

.ant-btn-sm {
  padding: 0 15px;
  font-size: 12px;
  border-radius: 4px;
  height: 24px;
}

.ant-btn-block {
  display: block;
  width: 100%;
}

/* 默认按钮 */
.ant-btn-default {
  color: rgba(0, 0, 0, 0.85);
  background-color: #fff;
  border-color: #d9d9d9;
}

.ant-btn-default:hover:not(:disabled) {
  color: #40a9ff;
  border-color: #40a9ff;
}

/* 主要按钮 */
.ant-btn-primary {
  color: #fff;
  background-color: #1890ff;
  border-color: #1890ff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.12);
  box-shadow: 0 2px 0 rgba(0, 0, 0, 0.045);
}

.ant-btn-primary:hover:not(:disabled) {
  color: #fff;
  background-color: #40a9ff;
  border-color: #40a9ff;
}

/* 幽灵按钮 */
.ant-btn-ghost {
  color: rgba(0, 0, 0, 0.85);
  background-color: transparent;
  border-color: #d9d9d9;
  box-shadow: none;
}

.ant-btn-ghost:hover:not(:disabled) {
  color: #40a9ff;
  border-color: #40a9ff;
  background-color: #e6f7ff;
}

/* 虚线按钮 */
.ant-btn-dashed {
  color: rgba(0, 0, 0, 0.85);
  background-color: transparent;
  border-color: #d9d9d9;
  border-style: dashed;
  box-shadow: none;
}

.ant-btn-dashed:hover:not(:disabled) {
  color: #40a9ff;
  border-color: #40a9ff;
  background-color: #e6f7ff;
}

/* 链接按钮 */
.ant-btn-link {
  color: #1890ff;
  background-color: transparent;
  border-color: transparent;
  box-shadow: none;
}

.ant-btn-link:hover:not(:disabled) {
  color: #40a9ff;
  background-color: #e6f7ff;
}

/* 文本按钮 */
.ant-btn-text {
  color: rgba(0, 0, 0, 0.85);
  background-color: transparent;
  border-color: transparent;
  box-shadow: none;
}

.ant-btn-text:hover:not(:disabled) {
  color: #40a9ff;
  background-color: #e6f7ff;
}

/* 危险按钮 */
.ant-btn-danger {
  color: #fff;
  background-color: #ff4d4f;
  border-color: #ff4d4f;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.12);
  box-shadow: 0 2px 0 rgba(0, 0, 0, 0.045);
}

.ant-btn-danger:hover:not(:disabled) {
  color: #fff;
  background-color: #ff7875;
  border-color: #ff7875;
}

/* 禁用状态 */
.ant-btn:disabled {
  color: rgba(0, 0, 0, 0.25);
  background-color: #f5f5f5;
  border-color: #d9d9d9;
  text-shadow: none;
  box-shadow: none;
  cursor: not-allowed;
  opacity: 0.65;
}

.ant-btn-primary:disabled {
  color: #fff;
  background-color: #d9d9d9;
  border-color: #d9d9d9;
}

.ant-btn-danger:disabled {
  color: #fff;
  background-color: #d9d9d9;
  border-color: #d9d9d9;
}

.ant-btn-link:disabled,
.ant-btn-text:disabled {
  color: rgba(0, 0, 0, 0.25);
  background-color: transparent;
}
</style>