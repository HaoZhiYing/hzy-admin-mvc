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
          <h4>角色名称:</h4>
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-col>
        <a-col :xs="24">
          <h4>能否删除:</h4>
          <a-radio-group v-model:value="vm.form.isDelete">
            <a-radio :value="1">是</a-radio>
            <a-radio :value="0">否</a-radio>
          </a-radio-group>
        </a-col>
        <a-col :xs="24">
          <h4>备注:</h4>
          <a-textarea
            v-model:value="vm.form.remark"
            placeholder="请输入"
            :rows="4"
          />
        </a-col>
      </a-row>
    </a-modal>
  </div>
</template>
<script>
import { defineComponent, reactive, toRefs, watch } from "vue";
import tools from "@/scripts/tools";
import service from "@/service/system/roleService";

export default defineComponent({
  props: {
    propVisible: Boolean,
    formKey: String,
    onSaveSuccess: Function,
  },
  setup(props, context) {
    const state = reactive({
      visible: props.propVisible,
      vm: {
        id: "",
        form: {},
      },
    });

    watch(
      () => props.propVisible,
      (value) => {
        state.visible = value;
      }
    );

    watch(
      () => state.visible,
      (value) => {
        context.emit("update:propVisible", value);
        if (value) {
          methods.findForm();
        }
      }
    );

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

    return {
      ...toRefs(state),
      ...methods,
    };
  },
});
</script>
