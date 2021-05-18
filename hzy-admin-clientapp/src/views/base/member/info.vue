<template>
  <a-form layout="vertical" :model="vm.form">
    <a-row :gutter="[15, 15]">
      <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
        <a-form-item label="编号">
          <a-input v-model:value="vm.form.number" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
        <a-form-item label="名称">
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
        <a-form-item label="联系电话">
          <a-input v-model:value="vm.form.phone" placeholder="请输入" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
        <a-form-item label="生日">
          <a-date-picker v-model:value="vm.form.birthday" valueFormat="YYYY-MM-DD" style="width: 100%" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
        <a-form-item label="性别">
          <a-radio-group name="radioGroup" default-value="男" v-model:value="vm.form.sex">
            <a-radio value="男">男</a-radio>
            <a-radio value="女">女</a-radio>
          </a-radio-group>
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
        <a-form-item label="头像">
          <div>
            <input type="file" @change="handlePhoto" />
          </div>
          <a-avatar shape="square" v-if="vm.form.photo" :size="100" :src="domainName + vm.form.photo" />
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
        <a-form-item label="文件">
          <input type="file" @change="handleFiles" multiple="multiple" />
          <ul v-if="vm.form.filePath">
            <li v-for="(item, index) in vm.form.filePath.split(',')" :key="index">
              <a v-if="vm.id" :href="domainName + item" target="_blank">{{ item }}</a>
              <a v-else href="javascript:void(0);">{{ item }}</a>
            </li>
          </ul>
        </a-form-item>
      </a-col>
      <a-col :xs="24" :sm="24" :md="24" :lg="24" :xl="24">
        <a-form-item label="简介">
          <WangEditor
            el="editor"
            v-model:html="vm.form.introduce"
            :domainName="domainName"
            :previewDomainName="domainName"
            :height="400"
            ref="editor"
          />
        </a-form-item>
      </a-col>
    </a-row>
  </a-form>
</template>
<script>
import { defineComponent, reactive, toRefs, onMounted } from "vue";
import tools from "@/scripts/tools";
import service from "@/service/base/memberService";
import WangEditor from "@/components/wangeditor";
import appConsts from "@/scripts/app-consts";
// import moment from 'moment';
//
// const dateFormat = 'YYYY-MM-DD';

export default defineComponent({
  props: {
    formKey: String,
    onSaveSuccess: Function,
  },
  components: { WangEditor },
  setup(props, context) {
    const state = reactive({
      vm: {
        id: "",
        form: {},
      },
      photoObject: null,
      filesObject: [],
      domainName: appConsts.domainName,
    });

    const methods = {
      findForm() {
        service.findForm(props.formKey).then((res) => {
          if (res.code != 1) return;
          state.vm = res.data;
          //格式化日期
          // state.vm.form.birthday = moment(state.vm.form.birthday, dateFormat);
        });
      },
      saveForm() {
        //组装数据
        let formData = new FormData();
        for (let key in state.vm.form) {
          let value = state.vm.form[key];
          if (!value) continue;
          formData.append(key, value);
        }

        if (state.photoObject) formData.append("Photo", state.photoObject);

        for (let i = 0; i < state.filesObject.length; i++) {
          let item = state.filesObject[i];
          formData.append("Files[" + i + "]", item);
        }

        service.saveForm(formData).then((res) => {
          if (res.code != 1) return;
          tools.message("操作成功!", "成功");
          state.visible = false;
          context.emit("on-save-success");
        });
      },
      //处理头像
      handlePhoto(e) {
        let target = e.target;
        if (target.files.length == 0) return;
        state.photoObject = target.files[0];
        state.vm.form.photo = tools.getObjectUrl(state.photoObject);
      },
      //处理多文件
      handleFiles(e) {
        let target = e.target;
        if (target.files.length == 0) return;
        let arrString = [];
        for (let i = 0; i < target.files.length; i++) {
          let item = target.files[i];
          arrString.push(item.name);
        }
        state.vm.form.filePath = arrString.join(",");
        state.filesObject = target.files;
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
