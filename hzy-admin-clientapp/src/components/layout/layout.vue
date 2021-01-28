<template>
  <div id="hzy-layout">
    <a-layout style="min-height: 100vh">
      <a-layout-sider
          hasSider
          v-model:collapsed="collapsed"
          :breakpoint="'lg'"
          @breakpoint="onBreakpoint"
          :collapsedWidth="siderWidth"
          :style="{
          overflow: 'auto',
          height: '100vh',
          position: 'fixed',
          left: 0,
        }"
          :theme="menuTheme"
      >
        <div class="hzy-logo">{{ title }}</div>
        <a-drawer
            placement="left"
            :closable="false"
            :visible="!collapsed"
            @close="collapsed = !collapsed"
            :bodyStyle="{ padding: 0 }"
            :drawerStyle="{ background: menuTheme == 'dark' ? '#001529' : '' }"
            v-if="breakpoint"
        >
          <div class="hzy-logo">{{ title }}</div>
          <layoutMenus class="hzy-layout-sider" :propMenuTheme="menuTheme"/>
        </a-drawer>
        <layoutMenus class="hzy-layout-sider" :propMenuTheme="menuTheme" v-else/>
      </a-layout-sider>
      <a-layout :style="{ marginLeft: siderWidth + 'px', zIndex: 5 }">
        <layoutHeader
            v-model:propCollapsed="collapsed"
            v-model:propHeaderTheme="headerTheme"
            v-model:propLayoutSettingsState="layoutSettings.state"
            @reload="reload"
        />
        <a-layout-content>
          <router-view v-slot="{ Component }">
            <transition name="fade" mode="out-in">
              <keep-alive :include="cacheViews">
                <component :is="Component" :key="key"/>
              </keep-alive>
            </transition>
          </router-view>
        </a-layout-content>
        <a-layout-footer style="text-align: center">
          Hzy Antd Vue Admin ©2020 Created by Hzy
        </a-layout-footer>
      </a-layout>
    </a-layout>

    <!--设置弹框-->
    <layoutSettings
        v-model:propState="layoutSettings.state"
        v-model:propHeaderTheme="headerTheme"
        v-model:propMenuTheme="menuTheme"
    />
  </div>
</template>
<script>
// 创建前(beforeCreate) 对应的钩子函数为beforeCreate。此阶段为...
// 2.创建后(created) 对应的钩子函数为created。在这个阶段vue实例已经创建...
// 3.载入前(beforeMount) 对应的钩子函数是beforemount,在这一阶段...
// 4.载入后(mounted) 对应的钩子函数是mounted。mounted是平时我们使用最...
// 5.更新前(beforeUpdate) 对应的钩子函数是beforeUpdate。在这一阶段...
import layoutHeader from "./layoutHeader";
import layoutMenus from "./menus/layoutMenus";
import layoutSettings from "./layoutSettings";
//vuex
import {mapState} from "vuex";
import tools from "@/scripts/tools";

export default {
  name: "AppMain",
  components: {
    layoutHeader,
    layoutMenus,
    layoutSettings,
  },
  data() {
    return {
      collapsed: false,
      selectedKeys: ["1"],
      openKeys: [],
      siderWidth: 200,
      breakpoint: false,
      headerTheme: tools.getHeaderTheme()
          ? tools.getHeaderTheme()
          : "hzy-layout-header-light",
      menuTheme: tools.getMenuTheme() ? tools.getMenuTheme() : "dark",
      layoutSettings: {
        state: false,
      }
    };
  },
  watch: {
    collapsed(value) {
      if (this.breakpoint) {
        //如果小屏幕 菜单宽度
        this.siderWidth = 0;
      } else {
        this.siderWidth = value ? 80 : 200;
      }
    }
  },
  computed: {
    ...mapState("app", {
      title: (state) => state.title,
      cacheViews: (state) => state.cacheViews
    }),
    key() {
      return this.$route.path;
    }
  },
  created() {
  },
  methods: {
    onBreakpoint(broken) {
      this.breakpoint = broken;
    },
    //刷新当前页面
    reload() {
      const {fullPath, name} = this.$route;
      this.$store.dispatch('app/delCacheView', name).then(() => {
        this.$nextTick(() => {
          this.$router.push({
            path: '/redirect' + fullPath
          })
        });
      });

    },
  },
};
</script>
