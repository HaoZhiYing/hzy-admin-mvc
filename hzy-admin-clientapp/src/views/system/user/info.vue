<template>
  <a-form layout="vertical" :model="vm.form">
    <a-row :gutter="[15, 15]">
      <!-- {{ vm.form.organizationId }} -->
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="真实姓名">
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="账户名称">
          <a-input v-model:value="vm.form.loginName" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="账户密码">
          <a-input v-model:value="vm.form.password" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="联系电话">
          <a-input v-model:value="vm.form.phone" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
        <a-form-item label="邮箱地址">
          <a-input v-model:value="vm.form.email" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="24" :md="24" :lg="24" :xl="24">
        <a-form-item label="所属岗位">
          <a-checkbox-group v-model:value="vm.postIds" class="w100">
            <a-row>
              <a-col :span="6" v-for="(item, index) in vm.allPostList" :key="index">
                <a-checkbox :value="item.id">
                  {{ item.name }}
                </a-checkbox>
              </a-col>
            </a-row>
          </a-checkbox-group>
        </a-form-item>
      </a-col>
      <a-col :xs="24">
        <a-form-item label="所属角色">
          <a-checkbox-group v-model:value="vm.roleIds" class="w100">
            <a-row>
              <a-col :span="6" v-for="(item, index) in vm.allRoleList" :key="index">
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
import { defineComponent, onMounted, reactive, toRefs } from "vue";
import tools from "@/scripts/tools";
import service from "@/service/system/userService";

export default defineComponent({
  props: {
    formKey: String,
    onSaveSuccess: Function,
    organizationId: String,
  },
  setup(props, context) {
    const state = reactive({
      vm: {
        id: "",
        form: {},
        roleIds: [],
        allRoleList: [],
        allPostList: [],
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
        if (!props.organizationId) {
          return tools.message("请选择组织", "警告");
        }
        state.vm.form.organizationId = props.organizationId;
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
