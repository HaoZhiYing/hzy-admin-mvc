<template>
  <a-form layout="vertical" :model="vm.form">
    <a-row :gutter="[15, 15]">
      <a-col :xs="24">
        <a-form-item label="编号">
          <a-input v-model:value="vm.form.number" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24">
        <a-form-item label="名称">
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24">
        <a-form-item label="英文名称">
          <a-input v-model:value="vm.form.byName" placeholder="请输入" />
        </a-form-item>
      </a-col>
    </a-row>
  </a-form>
</template>
<script>
import { defineComponent, reactive, toRefs, onMounted } from "vue";
import tools from "@/scripts/tools";
import service from "@/service/system/functionService";

export default defineComponent({
  props: {
    formKey: String,
    onSaveSuccess: Function,
  },
  setup(props, context) {
    const state = reactive({
      vm: {
        id: "",
        form: {},
      },
    });

    const methods = {
      findForm() {
        service.findForm(props.formKey).then((res) => {
          if (res.code != 1) return;
          state.vm = res.data;
        });
      },
      saveForm() {
        service.saveForm(state.vm.form).then((res) => {
          if (res.code != 1) return;
          tools.message("操作成功!", "成功");
          state.visible = false;
          context.emit("on-save-success");
        });
      },
    };

    context.expose({ ...methods });

    onMounted(() => {
      methods.findForm();
    });

    return {
      ...toRefs(state),
      ...methods,
    };
  },
});
</script>
<style lang="less" scoped>
.ant-form-item {
  margin-bottom: 0;
}
</style>
