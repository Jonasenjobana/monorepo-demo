<template>
  <div class="docs-app">
    <h1>组件库文档</h1>
    
    <section class="component-section">
      <h2>Button 按钮</h2>
      <h3>类型</h3>
      <div class="component-preview">
        <my-button>默认按钮</my-button>
        <my-button type="primary">主要按钮</my-button>
        <my-button type="ghost">幽灵按钮</my-button>
        <my-button type="dashed">虚线按钮</my-button>
        <my-button type="link">链接按钮</my-button>
        <my-button type="text">文本按钮</my-button>
        <my-button type="danger">危险按钮</my-button>
      </div>
      <div class="component-code">
        <pre><code>&lt;my-button&gt;默认按钮&lt;/my-button&gt;
&lt;my-button type="primary"&gt;主要按钮&lt;/my-button&gt;
&lt;my-button type="ghost"&gt;幽灵按钮&lt;/my-button&gt;
&lt;my-button type="dashed"&gt;虚线按钮&lt;/my-button&gt;
&lt;my-button type="link"&gt;链接按钮&lt;/my-button&gt;
&lt;my-button type="text"&gt;文本按钮&lt;/my-button&gt;
&lt;my-button type="danger"&gt;危险按钮&lt;/my-button&gt;</code></pre>
      </div>
      
      <h3>尺寸</h3>
      <div class="component-preview">
        <my-button size="large">大按钮</my-button>
        <my-button>中按钮</my-button>
        <my-button size="small">小按钮</my-button>
      </div>
      <div class="component-code">
        <pre><code>&lt;my-button size="large"&gt;大按钮&lt;/my-button&gt;
&lt;my-button&gt;中按钮&lt;/my-button&gt;
&lt;my-button size="small"&gt;小按钮&lt;/my-button&gt;</code></pre>
      </div>
      
      <h3>状态</h3>
      <div class="component-preview">
        <my-button disabled>禁用按钮</my-button>
        <my-button type="primary" disabled>禁用主要按钮</my-button>
      </div>
      <div class="component-code">
        <pre><code>&lt;my-button disabled&gt;禁用按钮&lt;/my-button&gt;
&lt;my-button type="primary" disabled&gt;禁用主要按钮&lt;/my-button&gt;</code></pre>
      </div>
      
      <h3>Block按钮</h3>
      <div class="component-preview" style="flex-direction: column; gap: 10px; align-items: stretch;">
        <my-button type="primary" block>Block按钮</my-button>
        <my-button block>普通Block按钮</my-button>
      </div>
      <div class="component-code">
        <pre><code>&lt;my-button type="primary" block&gt;Block按钮&lt;/my-button&gt;
&lt;my-button block&gt;普通Block按钮&lt;/my-button&gt;</code></pre>
      </div>
    </section>
    
    <section class="component-section">
      <h2>Input 输入框</h2>
      <h3>基础使用</h3>
      <div class="component-preview">
        <my-input 
          v-model="inputValue"
          placeholder="请输入内容"
          style="width: 300px;"
        />
        <p v-if="inputValue" style="margin-top: 10px;">输入的内容: {{ inputValue }}</p>
      </div>
      <div class="component-code">
        <pre><code>&lt;my-input 
  v-model="inputValue"
  placeholder="请输入内容"
/&gt;</code></pre>
      </div>
      
      <h3>尺寸</h3>
      <div class="component-preview">
        <my-input 
          v-model="inputValue"
          placeholder="大尺寸"
          size="large"
          style="width: 300px;"
        />
        <my-input 
          v-model="inputValue"
          placeholder="默认尺寸"
          style="width: 300px;"
        />
        <my-input 
          v-model="inputValue"
          placeholder="小尺寸"
          size="small"
          style="width: 300px;"
        />
      </div>
      <div class="component-code">
        <pre><code>&lt;my-input 
  v-model="inputValue"
  placeholder="大尺寸"
  size="large"
/&gt;
&lt;my-input 
  v-model="inputValue"
  placeholder="默认尺寸"
/&gt;
&lt;my-input 
  v-model="inputValue"
  placeholder="小尺寸"
  size="small"
/&gt;</code></pre>
      </div>
      
      <h3>可清除</h3>
      <div class="component-preview">
        <my-input 
          v-model="inputValue"
          placeholder="可清除"
          allowClear
          style="width: 300px;"
        />
      </div>
      <div class="component-code">
        <pre><code>&lt;my-input 
  v-model="inputValue"
  placeholder="可清除"
  allowClear
/&gt;</code></pre>
      </div>
      
      <h3>禁用和只读</h3>
      <div class="component-preview">
        <my-input 
          v-model="inputValue"
          placeholder="禁用状态"
          disabled
          style="width: 300px;"
        />
        <my-input 
          v-model="inputValue"
          placeholder="只读状态"
          readonly
          style="width: 300px;"
        />
      </div>
      <div class="component-code">
        <pre><code>&lt;my-input 
  v-model="inputValue"
  placeholder="禁用状态"
  disabled
/&gt;
&lt;my-input 
  v-model="inputValue"
  placeholder="只读状态"
  readonly
/&gt;</code></pre>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      inputValue: ''
    }
  }
}
</script>

<style>
.docs-app {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, 'Noto Sans', sans-serif;
}

h1 {
  text-align: center;
  color: rgba(0, 0, 0, 0.85);
  font-size: 24px;
  margin-bottom: 40px;
  font-weight: 600;
}

h2 {
  color: rgba(0, 0, 0, 0.85);
  border-left: 4px solid #40a9ff;
  padding-left: 12px;
  margin-top: 40px;
  font-size: 20px;
  font-weight: 600;
}

h3 {
  color: rgba(0, 0, 0, 0.85);
  margin-top: 24px;
  margin-bottom: 16px;
  font-size: 16px;
  font-weight: 500;
}

.component-section {
  background-color: #f5f5f5;
  padding: 24px;
  border-radius: 8px;
  margin-bottom: 32px;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.03);
}

.component-preview {
  background-color: #ffffff;
  padding: 24px;
  border-radius: 6px;
  margin: 16px 0;
  display: flex;
  gap: 16px;
  flex-wrap: wrap;
  align-items: center;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.03);
}

.component-code {
  background-color: #1e1e1e;
  border-radius: 6px;
  overflow: hidden;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.06);
}

pre {
  margin: 0;
  padding: 16px;
  overflow-x: auto;
}

code {
  color: #d4d4d4;
  font-family: 'Consolas', 'Monaco', 'Courier New', monospace;
  font-size: 14px;
  line-height: 1.5;
}
</style>