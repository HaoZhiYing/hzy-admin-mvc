<template>
  <div>
    <a-modal v-model:visible="visible" title="编辑" centered @ok="visible = false" :width="800">
      <template #footer>
        <a-button type="primary" :loading="loading" @click="save()">提交</a-button>
        <a-button type="danger" ghost @click="visible = false">关闭</a-button>
      </template>
      <a-row :gutter="[15, 15]">
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>用户名:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>年龄:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>地址:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>用户名:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>地址:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>用户名:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>年龄:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>地址:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>用户名:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>地址:</h4>
          <a-input v-model:value="value" placeholder="请输入" />
        </a-col>
      </a-row>
    </a-modal>

    <!-- <a-drawer
      title="编辑"
      placement="right"
      :closable="false"
      v-model:visible="visible"
      :after-visible-change="afterVisibleChange"
    >
      <p>Some contents...</p>
      <p>Some contents...</p>
      <p>Some contents...</p>
    </a-drawer>-->
  </div>
</template>
<script>
import { message } from "ant-design-vue";

export default {
  props: {
    propVisible: Boolean,
  },
  data() {
    return {
      visible: this.propVisible,
      value: "",
    };
  },
  watch: {
    propVisible(value) {
      this.visible = value;
    },
    visible(value) {
      this.$emit("update:propVisible", value);
    },
  },
  methods: {
    afterVisibleChange(val) {
      console.log("visible", val);
    },
    // showDrawer() {
    //   this.visible = true;
    // },
    save() {
      message.success("提交成功!");
    },
  },
};
</script>