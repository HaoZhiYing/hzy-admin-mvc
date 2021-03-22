<template>
  <a-layout-header style="padding: 0; height: 87px; background: #fff">
    <div class="hzy-layout-header" :class="hdeaderTheme">
      <div class="hzy-header-btn" @click="onCollapsed">
        <AppIcons iconName="MenuUnfoldOutlined" v-if="collapsed" />
        <AppIcons iconName="MenuFoldOutlined" v-else />
      </div>
      <!-- <div class="hzy-header-btn logo" v-if="!isMobile">{{ title }}</div> -->
      <div style="flex: 1 1 0%"></div>
      <div class="hzy-header-btn" @click="reload">
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
import AppIcons from "@/components/appIcons";
import layoutTabs from "./layoutTabs";
//vuex
import { mapState, mapMutations } from "vuex";

export default {
  props: {
    propCollapsed: Boolean,
    propLayoutSettingsState: Boolean,
    propHeaderTheme: String,
  },
  components: {
    AppIcons,
    layoutTabs,
  },
  data() {
    return {
      collapsed: this.propCollapsed,
      hdeaderTheme: this.propHeaderTheme,
      fullscreen: false,
      layoutSettings: {
        state: this.propLayoutSettingsState,
      },
      screenWidth: 0,
      screenHeight: 0,
      isMobile: this.screenWidth < 992,
      tabs: [],
    };
  },
  watch: {
    propCollapsed(value) {
      this.collapsed = value;
    },
    propLayoutSettingsState(value) {
      this.layoutSettings.state = value;
    },
    propHeaderTheme(value) {
      this.hdeaderTheme = value;
    },
  },
  computed: {
    ...mapState("app", {
      title: (state) => state.title,
      userName: (state) => state.userInfo.name,
    }),
  },
  created() {},
  mounted() {
    this.calcScreen();
  },
  methods: {
    ...mapMutations(`app`, {
      closeTabSelf: "closeTabSelf",
      closeTabOther: "closeTabOther",
      closeTabAll: "closeTabAll",
      tabClick: "tabClick",
    }),
    onCollapsed() {
      this.collapsed = !this.collapsed;
      this.$emit("update:propCollapsed", this.collapsed);
    },
    onSettings() {
      this.$emit("update:propLayoutSettingsState", !this.layoutSettings.state);
    },
    onLogOut() {
      //退出登录
      this.$router.push("/login");
    },
    reload(dom) {
      this.$emit("reload", dom);
    },
    //实时计算监听 宽高
    calcScreen() {
      this.screenWidth = window.innerWidth;
      this.screenHeight = window.innerHeight;
      this.isMobile = this.screenWidth < 992;
      window.onresize = () => {
        return (() => {
          this.screenWidth = window.innerWidth;
          this.screenHeight = window.innerHeight;
          this.isMobile = this.screenWidth < 992;
        })();
      };
    },
    // 全屏事件
    onFullScreen() {
      let element = document.documentElement;
      if (this.fullscreen) {
        if (document.exitFullscreen) {
          document.exitFullscreen();
        } else if (document.webkitCancelFullScreen) {
          document.webkitCancelFullScreen();
        } else if (document.mozCancelFullScreen) {
          document.mozCancelFullScreen();
        } else if (document.msExitFullscreen) {
          document.msExitFullscreen();
        }
      } else {
        if (element.requestFullscreen) {
          element.requestFullscreen();
        } else if (element.webkitRequestFullScreen) {
          element.webkitRequestFullScreen();
        } else if (element.mozRequestFullScreen) {
          element.mozRequestFullScreen();
        } else if (element.msRequestFullscreen) {
          // IE11
          element.msRequestFullscreen();
        }
      }
      this.fullscreen = !this.fullscreen;
    },
  },
};
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
