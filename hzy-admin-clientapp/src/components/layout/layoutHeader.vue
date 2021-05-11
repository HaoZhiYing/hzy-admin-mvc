<template>
  <a-layout-header style="padding: 0; height: 87px; background: #fff">
    <div class="hzy-layout-header" :class="headerTheme">
      <div class="hzy-header-btn" @click="onCollapsed">
        <AppIcons iconName="MenuUnfoldOutlined" v-if="collapsed" />
        <AppIcons iconName="MenuFoldOutlined" v-else />
      </div>
      <!-- <div class="hzy-header-btn logo" v-if="!isMobile">{{ title }}</div> -->
      <div style="flex: 1 1 0%"></div>
      <div class="hzy-header-btn" @click="onReload">
        <AppIcons iconName="ReloadOutlined" />
      </div>
      <div class="hzy-header-btn" @click="onSettings">
        <AppIcons iconName="SettingOutlined" />
      </div>
      <div class="hzy-header-btn" @click="onFullScreen" v-if="!isMobile">
        <AppIcons iconName="FullscreenExitOutlined" v-if="fullscreen" />
        <AppIcons iconName="FullscreenOutlined" v-else />
      </div>
      <div class="hzy-header-btn">
        <a-dropdown>
          <div>
            <AppIcons iconName="UserOutlined" />
            &nbsp;&nbsp;{{ userName ? userName : "HZY" }}
          </div>
          <template #overlay>
            <a-menu>
              <a-menu-item @click="onLogOut">
                <a href="javascript:;">
                  <AppIcons iconName="LogoutOutlined" />&nbsp;&nbsp;退出登录
                </a>
              </a-menu-item>
            </a-menu>
          </template>
        </a-dropdown>
      </div>
    </div>
    <layoutTabs
      v-model:propTabs="tabs"
      @close-self="closeTabSelf"
      @close-other="closeTabOther"
      @close-all="closeTabAll"
      @tab-click="tabClick"
    />
  </a-layout-header>
</template>
<script>
import {
  computed,
  defineComponent,
  onMounted,
  reactive,
  toRefs,
  watch,
} from "vue";
import AppIcons from "@/components/appIcons.vue";
import layoutTabs from "./layoutTabs.vue";
//vuex
import { useStore } from "vuex";
import router from "@/router/index";
import screenfull from "screenfull";
import tools from "@/scripts/tools";

export default defineComponent({
  name: "layoutHeader",
  props: {
    propCollapsed: Boolean,
    propLayoutSettingsState: Boolean,
    propHeaderTheme: String,
  },
  components: {
    AppIcons,
    layoutTabs,
  },
  setup(props, context) {
    const state = reactive({
      collapsed: props.propCollapsed,
      headerTheme: props.propHeaderTheme,
      fullscreen: false,
      layoutSettings: {
        state: props.propLayoutSettingsState,
      },
      screenWidth: 0,
      screenHeight: 0,
      // isMobile: screenWidth < 992,
      isMobile: false,
      tabs: [],
    });

    watch(
      () => props.propCollapsed,
      (value) => {
        state.collapsed = value;
      }
    );

    watch(
      () => props.propLayoutSettingsState,
      (value) => {
        state.layoutSettings.state = value;
      }
    );

    watch(
      () => props.propHeaderTheme,
      (value) => {
        state.headerTheme = value;
      }
    );

    const store = useStore();
    const title = computed(() => store.state.app.title);
    const userName = computed(() => store.state.app.userInfo.name);

    //页面加载 钩子函数
    onMounted(() => {
      methods.calcScreen();
    });

    const methods = {
      //实时计算监听 宽高
      calcScreen() {
        state.screenWidth = window.innerWidth;
        state.screenHeight = window.innerHeight;
        state.isMobile = state.screenWidth < 992;
        window.onresize = () => {
          return (() => {
            state.screenWidth = window.innerWidth;
            state.screenHeight = window.innerHeight;
            state.isMobile = state.screenWidth < 992;
          })();
        };
      },
      onCollapsed() {
        state.collapsed = !state.collapsed;
        context.emit("update:propCollapsed", state.collapsed);
      },
      onSettings() {
        context.emit(
          "update:propLayoutSettingsState",
          !state.layoutSettings.state
        );
      },
      onLogOut() {
        //退出登录
        router.push("/login");
      },
      onReload(dom) {
        context.emit("reload", dom);
      },
      //全屏事件
      onFullScreen() {
        if (!screenfull.isEnabled) {
          return tools.message(
            "您的浏览器无法使用全屏功能，请更换谷歌浏览器或者请手动点击F11按钮全屏展示！"
          );
        }
        screenfull.toggle();
        state.fullscreen = !screenfull.isFullscreen;
      },
    };

    return {
      ...toRefs(state),
      ...methods,
      title,
      userName,
    };
  },
});
</script>
<style lang="less">
#hzy-layout {
  //覆盖样式
  .ant-layout-header {
    position: relative;
    left: 0;
    z-index: 6;
    width: 100%;
    line-height: 48px;
  }

  //=======// 头部
  .hzy-layout-header {
    padding: 0;
    position: relative;
    display: flex;
    align-items: center;
    height: 48px;
    // padding: 0 20px;
    border-bottom: 1px solid #f0f2f5;
    // box-shadow: 0 1px 4px rgba(0, 21, 41, 0.08);

    .hzy-header-btn {
      padding: 0 10px;
      cursor: pointer;
    }

    .hzy-header-btn:hover {
      background: rgba(243, 246, 248, 0.2);
    }

    .logo {
      text-align: center;
      font-size: 16px;
      font-weight: bold;
      color: #fff;
    }

    .anticon {
      color: #fff;
      font-size: 15px;
    }

    .ant-dropdown-trigger {
      color: #fff;
    }
  }

  //=======// 头部 亮色
  .hzy-layout-header-light {
    background: #fff;

    .hzy-header-btn:hover {
      background: rgba(0, 0, 0, 0.025);
    }

    .logo {
      color: rgba(0, 0, 0, 0.85);
    }

    .anticon {
      color: rgba(0, 0, 0, 0.85);
    }

    .ant-dropdown-trigger {
      color: rgba(0, 0, 0, 0.85);
    }
  }

  //=======// 头部 暗色
  .hzy-layout-header-dark {
    background: #001529;
  }

  //=======// 头部 蓝色
  .hzy-layout-header-blue {
    background: #1890ff;
  }

  //=======// 头部 红色
  .hzy-layout-header-red {
    background: #f5222d;
  }

  //=======// 头部 橙色
  .hzy-layout-header-orange {
    background: #fa541c;
  }

  //=======// 头部 黄色
  .hzy-layout-header-yellow {
    background: #faad14;
  }

  //=======// 头部 青色
  .hzy-layout-header-cyan {
    background: #13c2c2;
  }

  //=======// 头部 绿色
  .hzy-layout-header-green {
    background: #52c41a;
  }

  //=======// 头部 深蓝色
  .hzy-layout-header-dark-blue {
    background: #2f54eb;
  }

  //=======// 头部 紫色
  .hzy-layout-header-violet {
    background: #722ed1;
  }
}
</style>
