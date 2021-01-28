<template>
  <div :id="el"></div>
</template>

<script>
import E from "wangeditor";

export default {
  props: {
    //dom 元素的 id 值
    el: String,
    //编辑器内容
    html: String,
    //编辑器高度
    height: Number,
    //文件上传域名
    domainName: String,
    //预览域名
    previewDomainName: String,
  },
  data() {
    return {
      editor: null,
      htmlData: this.html,
    };
  },
  watch: {
    html(value) {
      this.htmlData = value;
      this.setHtml();
    },
    htmlData(value) {
      this.$emit("update:html", value);
    },
  },
  created() {},
  mounted() {
    this.init();
  },
  //组件销毁前
  beforeUnmount() {},
  //组件销毁后
  unmounted() {
    // 销毁编辑器
    this.destroy();
  },
  methods: {
    init() {
      let t = this;
      this.editor = new E(document.getElementById(this.el));
      // 设置编辑区域高度为 500px
      this.editor.config.height = this.height ? this.height : 350;

      // 配置 onchange 回调函数
      this.editor.config.onchange = function (newHtml) {
        t.$emit("update:html", newHtml);
      };
      // 配置触发 onchange 的时间频率，默认为 200ms
      this.editor.config.onchangeTimeout = 300; // 修改为 500ms

      this.editor.config.zIndex = 0;
      this.uploadImageConfig();

      this.$emit("init-config", this.editor);

      this.editor.create();

      this.setHtml();
    },
    /**
     * 上传图片配置
     */
    uploadImageConfig() {
      let t = this;

      // 配置 server 接口地址
      this.editor.config.uploadImgServer = this.domainName
        ? this.domainName + "/Upload/Images"
        : "";
      this.editor.config.uploadFileName = "editorFileImages";
      this.editor.config.uploadImgTimeout = 60 * 1000;
      this.editor.config.uploadImgHooks = {
        // 图片上传并返回了结果，想要自己把图片插入到编辑器中
        // 例如服务器端返回的不是 { errno: 0, data: [...] } 这种格式，可使用 customInsert
        customInsert: function (insertImgFn, result) {
          // result 即服务端返回的接口
          // console.log('customInsert', result)

          // insertImgFn 可把图片插入到编辑器，传入图片 src ，执行函数即可
          let data = result.data;
          for (let i = 0; i < data.length; i++) {
            let item = data[i];
            if (t.previewDomainName) {
              insertImgFn(t.previewDomainName + item);
            } else {
              insertImgFn(item);
            }
          }
        },
      };
    },
    /**
     * 设置值
     */
    setHtml() {
      if (this.editor) {
        this.editor.txt.html(this.htmlData ? this.htmlData : "");
      }
    },
    /**
     * 销毁编辑器
     */
    destroy() {
      // 销毁编辑器
      this.editor.destroy();
      this.editor = null;
      this.htmlData = null;
    },
  },
};
</script>

<style scoped></style>
