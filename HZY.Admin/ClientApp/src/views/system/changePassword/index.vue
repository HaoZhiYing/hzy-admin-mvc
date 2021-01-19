<template>
  <div class="p-15">
    <a-row :gutter="20">
      <a-col :xs="24" :sm="24" :md="8" :lg="8" :xl="8"></a-col>
      <a-col :xs="24" :sm="24" :md="8" :lg="8" :xl="8">
        <a-card title="修改密码" :bordered="false" hoverable>
          <a-row :gutter="[15, 15]">
            <a-col :xs="24">
              <h4>旧密码:</h4>
              <a-input v-model:value="vm.oldPassword" type="password" placeholder="旧密码"/>
            </a-col>
            <a-col :xs="24">
              <h4>新密码:</h4>
              <a-input v-model:value="vm.newPassword" type="password" placeholder="旧密码"/>
            </a-col>
            <a-col :xs="24">
              <h4>确认新密码:</h4>
              <a-input v-model:value="vm.qrPassword" type="password" placeholder="确认新密码"/>
            </a-col>
            <a-col :xs="24" class="pt-15">
              <a-button type="primary" block @click="saveForm">保存</a-button>
            </a-col>
          </a-row>
        </a-card>
      </a-col>
    </a-row>
  </div>
</template>

<script>
import service from "@/service/system/changePassword";
import tools from "@/scripts/tools";

export default {
  name: "system_change_password",
  data() {
    return {
      vm: {
        oldPassword: '',
        newPassword: '',
        qrPassword: ''
      }
    };
  },
  created() {
  },
  mounted() {
  },
  methods: {
    saveForm() {

      if (!this.vm.oldPassword) {
        return tools.message("旧密码不能为空!", "警告");
      }

      if (!this.vm.newPassword) {
        return tools.message("新密码不能为空!", "警告");
      }

      if (!this.vm.qrPassword) {
        return tools.message("确认密码不能为空!", "警告");
      }

      if (this.vm.newPassword != this.vm.qrPassword) {
        return tools.message("两次密码不一致!", "警告");
      }

      service.saveForm(this.vm).then((res) => {
        if (res.code != 1) return;
        tools.message("操作成功!", "成功");
      });
    },
  }
}
</script>
