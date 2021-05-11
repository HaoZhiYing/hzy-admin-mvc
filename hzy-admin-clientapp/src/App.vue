<template>
  <a-config-provider :getPopupContainer="getPopupContainer" :locale="locale">
    <router-view />
  </a-config-provider>
</template>

<script>
import { defineComponent, ref } from "vue";
import zhCN from "ant-design-vue/es/locale/zh_CN";
import moment from "moment";
import "moment/dist/locale/zh-cn";
moment.locale("zh-cn");

export default defineComponent({
  name: "App",
  setup() {
    const locale = ref(zhCN);

    const getPopupContainer = (el, dialogContext) => {
      if (dialogContext) {
        return dialogContext.getDialogWrap();
      } else {
        return document.body;
      }
    };

    return {
      locale,
      getPopupContainer,
    };
  },
});
</script>
