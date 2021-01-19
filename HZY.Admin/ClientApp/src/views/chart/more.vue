<template>
  <div className="p-15">
    <a-spin v-if="loading"/>
    <iframe src="https://g2.antv.vision/zh/examples/gallery" frameBorder="0" id="iframe_g2" v-show="!loading"></iframe>
    <!--    <iframe src="https://antv-g2.gitee.io/zh/examples/gallery" frameBorder="0" id="iframe_g2" v-show="!loading"></iframe>-->
  </div>
</template>

<script>
export default {
  name: "chart_more",
  data() {
    return {
      loading: true
    };
  },
  created() {

  },
  mounted() {

    let t = this;
    let iframe = document.getElementById('iframe_g2');

    // 处理兼容行问题
    if (Object.prototype.hasOwnProperty.call(iframe, 'attachEvent')) {
      iframe.attachEvent('onload', function () {
        // iframe加载完毕以后执行操作
        t.loading = false;
      })
    } else {
      iframe.onload = function () {
        // iframe加载完毕以后执行操作
        t.loading = false;
      }
    }

  }
}

</script>

<style lang="less" scoped>
iframe {
  width: 100%;
  height: calc(100vh - 200px);
}
</style>