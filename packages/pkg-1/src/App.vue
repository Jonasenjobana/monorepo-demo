<template>
  <div class="todo-app">
    <h1>Todo List</h1>
    
    <div class="add-todo">
      <my-input 
        v-model="newTodo"
        placeholder="请输入待办事项"
        @keyup.enter="addTodo"
      />
      <my-button type="primary" @click="addTodo">添加</my-button>
    </div>
    
    <ul class="todo-list">
      <li v-for="(todo, index) in todos" :key="index" class="todo-item">
        <span>{{ todo }}</span>
        <my-button @click="removeTodo(index)">删除</my-button>
      </li>
    </ul>
    
    <div v-if="todos.length === 0" class="empty-tip">暂无待办事项</div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      newTodo: '',
      todos: []
    }
  },
  methods: {
    addTodo() {
      if (this.newTodo.trim()) {
        this.todos.push(this.newTodo.trim())
        this.newTodo = ''
      }
    },
    removeTodo(index) {
      this.todos.splice(index, 1)
    }
  }
}
</script>

<style>
.todo-app {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
}

h1 {
  text-align: center;
  color: #303133;
}

.add-todo {
  display: flex;
  gap: 10px;
  margin-bottom: 20px;
}

.my-input {
  flex: 1;
}

.todo-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.todo-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 12px;
  border-bottom: 1px solid #ebeef5;
}

.empty-tip {
  text-align: center;
  color: #909399;
  padding: 20px;
}
</style>