<template>
  <iframe src="https://localhost:5601/swagger" frameborder="0"></iframe>
</template>
<script>
export default {
  name:"system_swagger",
  data() {
    return {};
  },
  created() {
    console.log("this.$route.query", this.$route.query);
  },
};
</script>
<style lang="less" scoped>
iframe {
  width: 100%;
  height: 100%;
}
</style>
