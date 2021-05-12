<template>
  <div>
    <a-modal
      v-model:visible="visible"
      title="编辑"
      centered
      @ok="visible = false"
      :width="1200"
      :destroyOnClose="true"
      class="xs-w100"
    >
      <template #footer>
        <a-button type="primary" @click="saveForm()">提交</a-button>
        <a-button type="danger" ghost @click="visible = false">关闭</a-button>
      </template>
      <a-row :gutter="[15, 15]">
        <a-col :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
          <h4>编号:</h4>
          <a-input v-model:value="vm.form.number" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
          <h4>名称:</h4>
          <a-input v-model:value="vm.form.name" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
          <h4>联系电话:</h4>
          <a-input v-model:value="vm.form.phone" placeholder="请输入" />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
          <h4>性别:</h4>
          <a-radio-group
            name="radioGroup"
            default-value="男"
            v-model:value="vm.form.sex"
          >
            <a-radio value="男">男</a-radio>
            <a-radio value="女">女</a-radio>
          </a-radio-group>
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="8" :xl="8">
          <h4>生日:</h4>
          <a-date-picker
            v-model:value="vm.form.birthday"
            valueFormat="YYYY-MM-DD"
            style="width: 100%"
          />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>头像:</h4>
          <div>
            <input type="file" @change="handlePhoto" />
          </div>
          <a-avatar
            shape="square"
            v-if="vm.form.photo"
            :size="100"
            :src="domainName + vm.form.photo"
          />
        </a-col>
        <a-col :xs="24" :sm="12" :md="12" :lg="12" :xl="12">
          <h4>文件:</h4>
          <input type="file" @change="handleFiles" multiple="multiple" />
          <ul v-if="vm.form.filePath">
            <li
              v-for="(item, index) in vm.form.filePath.split(',')"
              :key="index"
            >
              <a v-if="vm.id" :href="domainName + item" target="_blank">{{
                item
              }}</a>
              <a v-else href="javascript:void(0);">{{ item }}</a>
            </li>
          </ul>
        </a-col>
        <a-col :xs="24" :sm="24" :md="24" :lg="24" :xl="24">
          <h4>简介:</h4>
          <WangEditor
            el="editor"
            v-model:html="vm.form.introduce"
            :domainName="domainName"
            :previewDomainName="domainName"
            :height="400"
            ref="editor"
          />
        </a-col>
      </a-row>
    </a-modal>
  </div>
</template>
<script>
import { defineComponent, reactive, toRefs, watch } from "vue";
import tools from "@/scripts/tools";
import service from "@/service/base/memberService";
import WangEditor from "@/components/wangeditor";
// import moment from 'moment';
//
// const dateFormat = 'YYYY-MM-DD';

export default defineComponent({
  props: {
    propVisible: Boolean,
    formKey: String,
    onSaveSuccess: Function,
  },
  components: { WangEditor },
  setup(props, context) {
    const state = reactive({
      visible: props.propVisible,
      vm: {
        id: "",
        form: {},
      },
      photoObject: null,
      filesObject: [],
      domainName: tools.domainName,
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

    return {
      ...toRefs(state),
      ...methods,
    };
  },
});
</script>
