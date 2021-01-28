<template>
  <div class="p-15" @click="onHello">
    <a-button type="primary"> Primary </a-button>
    <a-button>Default</a-button>
    <a-button type="dashed"> Dashed </a-button>
    <a-button type="danger"> Danger </a-button>
    <a-config-provider :auto-insert-space-in-button="false">
      <a-button type="primary"> 按钮 </a-button>
    </a-config-provider>
    <a-button type="primary"> 按钮 </a-button>
    <a-button type="link"> Link </a-button>
    <a-button class="btn-success"> Success </a-button>
    <a-button class="btn-info"> Info </a-button>
    <a-button class="btn-warning"> warning </a-button>
  </div>
</template>
<script>
import { message } from "ant-design-vue";

export default {
  name: "button",
  data() {
    return {
      message: "hello",
    };
  },
  methods: {
    onHello() {
      message.success(this.message);
    },
  },
};
</script>
