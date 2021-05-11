<template>
  <a-drawer
    class="app-settings"
    placement="right"
    width="300px"
    :closable="false"
    @close="setState(!state)"
    :visible="state"
  >
    <a-divider>主题颜色</a-divider>
    <div class="app-skin-list mb-5 text-center">
      <div
        class="app-skin-item"
        v-for="(item, index) in headerThemes"
        :key="index"
        :style="{ background: item.color }"
        @click="onHeaderTheme(item.className)"
      ></div>
    </div>
    <a-divider>菜单颜色</a-divider>
    <div class="mt-5 text-center">
      <a-radio-group
        name="radioGroup"
        defaultValue="dark"
        v-model:value="menuTheme"
      >
        <a-radio value="dark">暗色</a-radio>
        <a-radio value="light">亮色</a-radio>
      </a-radio-group>
    </div>
  </a-drawer>
</template>
<script>
import tools from "@/scripts/tools";
export default {
  props: {
    propState: Boolean,
    propMenuTheme: String,
    propHeaderTheme: String,
  },
  data() {
    return {
      state: this.propState,
      menuTheme: this.propMenuTheme,
      headerTheme: this.propHeaderTheme,
      headerThemes: [
        { className: "hzy-layout-header-light", color: "#ffffff" },
        { className: "hzy-layout-header-dark", color: "#001529" },
        { className: "hzy-layout-header-blue", color: "#1890ff" },
        { className: "hzy-layout-header-red", color: "#f5222d" },
        { className: "hzy-layout-header-orange", color: "#fa541c" },
        { className: "hzy-layout-header-yellow", color: "#faad14" },
        { className: "hzy-layout-header-cyan", color: "#13c2c2" },
        { className: "hzy-layout-header-green", color: "#52c41a" },
        { className: "hzy-layout-header-dark-blue", color: "#2f54eb" },
        { className: "hzy-layout-header-violet", color: "#722ed1" },
      ],
    };
  },
  watch: {
    propState(value) {
      this.state = value;
    },
    propMenuTheme(value) {
      this.menuTheme = value;
    },
    propHeaderTheme(value) {
      this.headerTheme = value;
    },
    menuTheme(value) {
      this.$emit("update:propMenuTheme", value);
      tools.setMenuTheme(value);
    },
  },
  methods: {
    setState(value) {
      this.state = value;
      this.$emit("update:propState", value);
    },
    onHeaderTheme(value) {
      this.headerTheme = value;
      this.$emit("update:propHeaderTheme", value);
      tools.setHeaderTheme(value);
    },
  },
};
</script>
<style lang="less" scoped>
.app-settings {
  .app-skin-list {
    width: 100%;
    display: inline-block;
    .app-skin-item {
      width: 25px;
      height: 25px;
      float: left;
      margin: 8px;
      cursor: pointer;
      border-radius: 5px;
      border: 1px solid #f5222d;
    }
  }
}
</style>
