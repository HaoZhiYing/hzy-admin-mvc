<template>
  <a-menu
    :theme="menuTheme"
    v-model:selectedKeys="selectedKeys"
    v-model:openKeys="openKeys"
    mode="inline"
    @select="onMenuSelected"
  >
    <!-- <a-menu-item key="/home" title="首页">
      <desktop-outlined />
      <span>首页</span>
    </a-menu-item>
    <a-menu-item key="/button" title="按钮">
      <pie-chart-outlined />
      <span>按钮</span>
    </a-menu-item>
    <a-sub-menu key="sub2">
      <template #title>
        <span>
          <team-outlined />
          <span>列表页</span>
        </span>
      </template>
      <a-menu-item key="/baseList" title="基础列表">基础列表</a-menu-item>
      <a-menu-item key="/list" title="标准列表">标准列表</a-menu-item>
    </a-sub-menu> -->

    <!-- 动态生成-->
    <template v-for="item in menus">
      <a-menu-item v-if="item.children.length === 0" :key="item.componentName" :title="item.name">
        <AppIcons :iconName="item.icon" />
        <span>{{ item.name }}</span>
      </a-menu-item>
      <SubMenus v-else :menu-info="item" :key="item.id" />
    </template>
  </a-menu>
</template>
<script>
//vuex
import { mapState } from "vuex";
import SubMenus from "./subMenus";
import AppIcons from "@/components/appIcons";

let openKeys = localStorage.getItem("openKeys");
export default {
  props: {
    propMenuTheme: String,
  },
  components: {
    SubMenus,
    AppIcons,
  },
  data() {
    return {
      defaultSelectedKeys: [this.$route.name],
      selectedKeys: [this.$route.name],
      openKeys: openKeys ? JSON.parse(openKeys) : [],
      menuTheme: this.propMenuTheme,
    };
  },
  watch: {
    $route(value) {
      this.selectedKeys = [value.name];
    },
    propMenuTheme(value) {
      this.menuTheme = value;
    },
    openKeys(value) {
      localStorage.setItem("openKeys", JSON.stringify(value));
    },
  },
  computed: {
    ...mapState("app", {
      title: (state) => state.title,
      menus: (state) => state.userInfo.menus,
    }),
  },
  created() {
    let openKeys = localStorage.getItem("openKeys");
    if (openKeys) {
      this.openKeys = JSON.parse(openKeys);
    }
  },
  mounted() {},
  methods: {
    //菜单选中
    onMenuSelected(obj) {
      this.$router.push({name: obj.key});
    },
  },
};
</script>
