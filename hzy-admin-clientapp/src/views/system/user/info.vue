<template>
  <div>
    <a-modal
      v-model:visible="visible"
      title="编辑"
      centered
      @ok="visible = false"
      :width="800"
    >
      <template #footer>
        <a-button type="primary" @click="saveForm()">提交</a-button>
        <a-button type="danger" ghost @click="visible = false">关闭</a-button>
      </template>
      <a-row :gutter="[15, 15]">
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>真实姓名:</h4>
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>账户名称:</h4>
          <a-input v-model:value="vm.form.loginName" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>账户密码:</h4>
          <a-input v-model:value="vm.form.password" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>联系电话:</h4>
          <a-input v-model:value="vm.form.phone" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>邮箱地址:</h4>
          <a-input v-model:value="vm.form.email" placeholder="请输入" />
        </a-col>
        <a-col :xs="24">
          <h4>角色:</h4>
          <a-checkbox-group v-model:value="vm.roleIds" class="w100">
            <a-row>
              <a-col :span="6" v-for="(item, index) in vm.allRoleList" :key="index">
                <a-checkbox :value="item.id">
                  {{ item.name }}
                </a-checkbox>
              </a-col>
            </a-row>
          </a-checkbox-group>
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
import tools from "@/scripts/tools";
import service from "@/service/system/userService";

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
        roleIds: [],
        allRoleList: [],
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
      service.saveForm(this.vm).then((res) => {
        if (res.code != 1) return;
        tools.message("操作成功!", "成功");
        this.visible = false;
        this.$emit("on-save-success");
      });
    },
  },
};
</script>
