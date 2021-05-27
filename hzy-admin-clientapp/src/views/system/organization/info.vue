<template>
  <a-form layout="vertical" :model="vm.form">
    <a-row :gutter="[15, 15]">
      <a-col :xs="24" v-show="parentId">
        <a-form-item label="parentId">
          {{ parentId }}
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="排序号">
          <a-input-number v-model:value="vm.form.orderNumber" :min="1" :max="999" class="w100" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="部门名称">
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="负责人">
          <a-input v-model:value="vm.form.leader" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="联系电话">
          <a-input v-model:value="vm.form.phone" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="邮箱">
          <a-input v-model:value="vm.form.email" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="状态">
          <a-radio-group v-model:value="vm.form.state">
            <a-radio :value="1">正常</a-radio>
            <a-radio :value="2">停用</a-radio>
          </a-radio-group>
        </a-form-item>
      </a-col>
    </a-row>
  </a-form>
</template>
<script>
import { defineComponent, reactive, toRefs, onMounted } from "vue";
import tools from "@/scripts/tools";
import service from "@/service/system/organizationService";

export default defineComponent({
  props: {
    propVisible: Boolean,
    formKey: String,
    onSaveSuccess: Function,
    //父级Id
    parentId: String,
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
        service.findForm(props.formKey, props.parentId).then((res) => {
          if (res.code != 1) return;
          state.vm = res.data;
        });
      },
      saveForm() {
        if (props.parentId) state.vm.form.parentId = props.parentId;
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
