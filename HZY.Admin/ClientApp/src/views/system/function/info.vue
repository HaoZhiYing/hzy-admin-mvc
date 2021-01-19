<template>
  <div>
    <a-modal
      v-model:visible="visible"
      title="编辑"
      centered
      @ok="visible = false"
      :width="400"
    >
      <template #footer>
        <a-button type="primary" @click="saveForm()">提交</a-button>
        <a-button type="danger" ghost @click="visible = false">关闭</a-button>
      </template>
      <a-row :gutter="[15, 15]">
        <a-col :xs="24">
          <h4>编号:</h4>
          <a-input v-model:value="vm.form.number" placeholder="请输入" />
        </a-col>
        <a-col :xs="24">
          <h4>名称:</h4>
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-col>
        <a-col :xs="24">
          <h4>英文名称:</h4>
          <a-input v-model:value="vm.form.byName" placeholder="请输入" />
        </a-col>
      </a-row>
    </a-modal>
  </div>
</template>
<script>
import tools from "@/scripts/tools";
import service from "@/service/system/functionService";

export default {
  props: {
    propVisible: Boolean,
    formKey: String,
    onSaveSuccess: Function,
  },
  data() {
    return {
      visible: this.propVisible,
      vm: {
        id: "",
        form: {},
      },
    };
  },
  watch: {
    propVisible(value) {
      this.visible = value;
    },
    visible(value) {
      this.$emit("update:propVisible", value);
      if (value) {
        this.findForm();
      }
    },
  },
  methods: {
    findForm() {
      service.findForm(this.formKey).then((res) => {
        if (res.code != 1) return;
        this.vm = res.data;
      });
    },
    saveForm() {
      service.saveForm(this.vm.form).then((res) => {
        if (res.code != 1) return;
        tools.message("操作成功!", "成功");
        this.visible = false;
        this.$emit("on-save-success");
      });
    },
  },
};
</script>
