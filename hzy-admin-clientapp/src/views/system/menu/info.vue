<template>
  <a-form layout="vertical" :model="vm.form">
    <a-row :gutter="[15, 15]">
      <a-col :xs="24">
        <a-form-item label="Id">
          <a-input v-model:value="vm.form.id" placeholder="请输入" readonly />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="编号">
          <a-input v-model:value="vm.form.number" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="菜单名称">
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="组件名称">
          <a-input v-model:value="vm.form.componentName" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="菜单物理地址">
          <a-input v-model:value="vm.form.url" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="菜单路由地址">
          <a-input v-model:value="vm.form.router" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="图标">
          <a-input v-model:value="vm.form.icon" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="是否显示">
          <a-radio-group v-model:value="vm.form.show">
            <a-radio :value="1">是</a-radio>
            <a-radio :value="0">否</a-radio>
          </a-radio-group>
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="选项卡能否关闭">
          <a-radio-group v-model:value="vm.form.close">
            <a-radio :value="1">是</a-radio>
            <a-radio :value="0">否</a-radio>
          </a-radio-group>
        </a-form-item>
      </a-col>
      <a-col :xs="24">
        <a-form-item label="拥有功能">
          <a-checkbox-group v-model:value="vm.functionIds" class="w100">
            <a-row>
              <a-col :span="6" v-for="(item, index) in vm.allFunctions" :key="index">
                <a-checkbox :value="item.id">
                  {{ item.name }}
                </a-checkbox>
              </a-col>
            </a-row>
          </a-checkbox-group>
        </a-form-item>
      </a-col>
    </a-row>
  </a-form>
</template>
<script>
import { defineComponent, reactive, toRefs, onMounted } from "vue";
import tools from "@/scripts/tools";
import service from "@/service/system/menuService";

export default defineComponent({
  props: {
    formKey: String,
    onSaveSuccess: Function,
    parentMenuId: String,
  },
  setup(props, context) {
    const state = reactive({
      vm: {
        id: "",
        form: {},
        allFunctions: [],
        functionIds: [],
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
        state.vm.form.ParentId = props.parentMenuId ? props.parentMenuId : null;
        service.saveForm(state.vm).then((res) => {
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
