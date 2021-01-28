<template>
  <div className="p-15">
    <a-spin v-if="loading" />
    <iframe
      :src="domainName + '/swagger'"
      frameBorder="0"
      id="iframe_swagger"
      v-show="!loading"
    ></iframe>
  </div>
</template>

<script>
import tools from "@/scripts/tools";

export default {
  name: "system_swagger",
  data() {
    return {
      loading: true,
      domainName: tools.domainName,
    };
  },
  created() {},
  mounted() {
    let t = this;
    let iframe = document.getElementById("iframe_swagger");

    // 处理兼容行问题
    if (Object.prototype.hasOwnProperty.call(iframe, "attachEvent")) {
      iframe.attachEvent("onload", function () {
        // iframe加载完毕以后执行操作
        t.loading = false;
      });
    } else {
      iframe.onload = function () {
        // iframe加载完毕以后执行操作
        t.loading = false;
      };
    }
  },
};
</script>

<style lang="less" scoped>
iframe {
  width: 100%;
  height: calc(100vh - 200px);
}
</style>
