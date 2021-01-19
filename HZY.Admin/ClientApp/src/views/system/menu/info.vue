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
        <a-col :xs="24">
          <h4>Id:</h4>
          <a-input v-model:value="vm.form.id" placeholder="请输入" readonly/>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>编号:</h4>
          <a-input v-model:value="vm.form.number" placeholder="请输入"/>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>菜单名称:</h4>
          <a-input v-model:value="vm.form.name" placeholder="请输入"/>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>组件名称:</h4>
          <a-input v-model:value="vm.form.componentName" placeholder="请输入"/>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>菜单物理地址:</h4>
          <a-input v-model:value="vm.form.url" placeholder="请输入"/>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>菜单路由地址:</h4>
          <a-input v-model:value="vm.form.router" placeholder="请输入"/>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>图标:</h4>
          <a-input v-model:value="vm.form.icon" placeholder="请输入"/>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>是否显示:</h4>
          <a-radio-group v-model:value="vm.form.show">
            <a-radio :value="1">是</a-radio>
            <a-radio :value="0">否</a-radio>
          </a-radio-group>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>选项卡能否关闭:</h4>
          <a-radio-group v-model:value="vm.form.close">
            <a-radio :value="1">是</a-radio>
            <a-radio :value="0">否</a-radio>
          </a-radio-group>
        </a-col>
        <a-col :xs="24">
          <h4>拥有功能:</h4>
          <a-checkbox-group v-model:value="vm.functionIds" class="w100">
            <a-row>
              <a-col :span="6" v-for="(item, index) in vm.allFunctions" :key="index">
                <a-checkbox :value="item.id">
                  {{ item.name }}
                </a-checkbox>
              </a-col>
            </a-row>
          </a-checkbox-group>
        </a-col>
      </a-row>
    </a-modal>
  </div>
</template>
<script>
import tools from "@/scripts/tools";
import service from "@/service/system/menuService";

export default {
  props: {
    propVisible: Boolean,
    formKey: String,
    onSaveSuccess: Function,
    parentMenuId: String
  },
  data() {
    return {
      visible: this.propVisible,
      vm: {
        id: "",
        form: {},
        allFunctions: [],
        functionIds: [],
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
      this.vm.form.ParentId = this.parentMenuId ? this.parentMenuId : null;
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
