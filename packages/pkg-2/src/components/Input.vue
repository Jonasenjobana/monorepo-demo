<template>
  <div 
    :class="[
      'ant-input-wrapper',
      `ant-input-wrapper-${size}`,
      { 'ant-input-wrapper-disabled': disabled }
    ]"
  >
    <input
      :value="modelValue"
      @input="handleInput"
      @focus="$emit('focus', $event)"
      @blur="$emit('blur', $event)"
      @change="$emit('change', $event)"
      :placeholder="placeholder"
      :type="type"
      :disabled="disabled"
      :maxlength="maxlength"
      :minlength="minlength"
      :readonly="readonly"
      class="ant-input"
    />
    <span 
      v-if="allowClear && modelValue && !disabled"
      class="ant-input-clear-icon"
      @click.stop="handleClear"
    >
      ×
    </span>
  </div>
</template>

<script>
export default {
  name: 'MyInput',
  props: {
    modelValue: {
      type: String,
      default: ''
    },
    placeholder: {
      type: String,
      default: ''
    },
    type: {
      type: String,
      default: 'text'
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
    readonly: {
      type: Boolean,
      default: false
    },
    maxlength: {
      type: Number
    },
    minlength: {
      type: Number
    },
    allowClear: {
      type: Boolean,
      default: false
    }
  },
  methods: {
    handleInput(event) {
      const value = event.target.value
      this.$emit('update:modelValue', value)
      this.$emit('input', event)
    },
    handleClear() {
      this.$emit('update:modelValue', '')
      this.$emit('clear')
    }
  }
}
</script>

<style scoped>
.ant-input-wrapper {
  position: relative;
  display: inline-flex;
  width: 100%;
}

.ant-input {
  position: relative;
  display: inline-block;
  width: 100%;
  min-width: 0;
  padding: 4px 11px;
  color: rgba(0, 0, 0, 0.85);
  font-size: 14px;
  line-height: 1.5715;
  background-color: #fff;
  background-image: none;
  border: 1px solid #d9d9d9;
  border-radius: 6px;
  transition: all 0.3s;
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, 'Noto Sans', sans-serif;
}

/* 尺寸样式 */
.ant-input-wrapper-lg .ant-input {
  padding: 6.4px 11px;
  font-size: 16px;
  border-radius: 6px;
  height: 40px;
}

.ant-input-wrapper-sm .ant-input {
  padding: 0 11px;
  font-size: 12px;
  border-radius: 4px;
  height: 24px;
}

/* 状态样式 */
.ant-input:focus {
  border-color: #40a9ff;
  box-shadow: 0 0 0 2px rgba(24, 144, 255, 0.2);
  outline: 0;
}

.ant-input:hover:not(:disabled):not(.ant-input-disabled) {
  border-color: #40a9ff;
}

.ant-input-wrapper-disabled .ant-input,
.ant-input:disabled {
  color: rgba(0, 0, 0, 0.25);
  background-color: #f5f5f5;
  border-color: #d9d9d9;
  cursor: not-allowed;
}

.ant-input[readonly] {
  background-color: #f5f5f5;
  cursor: not-allowed;
  color: rgba(0, 0, 0, 0.65);
}

/* 清除按钮 */
.ant-input-clear-icon {
  position: absolute;
  top: 50%;
  right: 11px;
  transform: translateY(-50%);
  width: 14px;
  height: 14px;
  color: rgba(0, 0, 0, 0.25);
  font-size: 14px;
  line-height: 1;
  text-align: center;
  background-color: #fff;
  border-radius: 50%;
  cursor: pointer;
  opacity: 0;
  transition: all 0.3s;
  pointer-events: none;
}

.ant-input-wrapper:hover .ant-input-clear-icon,
.ant-input-wrapper-focused .ant-input-clear-icon {
  opacity: 1;
  pointer-events: auto;
}

.ant-input-clear-icon:hover {
  color: rgba(0, 0, 0, 0.45);
  background-color: #f5f5f5;
}

/* placeholder样式 */
.ant-input::placeholder {
  color: rgba(0, 0, 0, 0.25);
}

/* input的过渡效果 */
.ant-input,
.ant-input-wrapper {
  transition: all 0.3s cubic-bezier(0.645, 0.045, 0.355, 1);
}
</style>