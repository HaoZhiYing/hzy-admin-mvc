<template>
  <a-config-provider :getPopupContainer="getPopupContainer" :locale="locale">
    <a-spin :spinning="loading">
      <router-view></router-view>
    </a-spin>
  </a-config-provider>
</template>

<script>
import zhCN from "ant-design-vue/es/locale/zh_CN";
import moment from "moment";
import "moment/dist/locale/zh-cn";

moment.locale("zh-cn");
//vuex
import {mapState, mapMutations} from "vuex";

export default {
  name: "App",
  components: {},
  data() {
    return {
      locale: zhCN,
    };
  },
  computed: {
    ...mapState("app", {
      loading: (state) => state.loading,
    }),
  },
  mounted() {
    // setTimeout(() => (this.loading = false), 500);
    this.setLoading(!this.loading);
  },
  methods: {
    getPopupContainer(el, dialogContext) {
      if (dialogContext) {
        return dialogContext.getDialogWrap();
      } else {
        return document.body;
      }
    },
    ...mapMutations(`app`, {
      //重置检索文本框
      setLoading: "setLoading",
    }),
  },
};
</script>