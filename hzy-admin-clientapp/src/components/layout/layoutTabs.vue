<template>
  <div class="app-tabs">
    <a-tabs
        hide-add
        tabPosition="top"
        type="editable-card"
        :tabBarGutter="0"
        @edit="closeTabSelf"
        @tabClick="tabClick"
        v-model:activeKey="activeKey"
    >
      <a-tab-pane v-for="item in tabList" :key="item.name" :closable="item.meta.close">
        <template #tab>
          <a-dropdown :trigger="['contextmenu']">
            <span style="user-select: none">{{ item.meta.title }}</span>
            <template #overlay>
              <a-menu>
                <a-menu-item key="1" @click="closeTabSelf(item.name)">关闭当前</a-menu-item>
                <a-menu-item key="2" @click="closeTabOther(item.name)">关闭其他</a-menu-item>
                <a-menu-item key="3" @click="closeTabAll()">关闭全部</a-menu-item>
              </a-menu>
            </template>
          </a-dropdown>
        </template>
      </a-tab-pane>
    </a-tabs>
  </div>
</template>
<script>
//vuex
import {mapState, mapMutations} from "vuex";

export default {
  name: "app-layout-tabs",
  data() {
    return {};
  },
  computed: {
    ...mapState("app", {
      tabList: (state) => state.tabList,
    }),
    activeKey() {
      return this.$route.name;
    }
  },
  watch: {
    $route() {
      this.addTags();
    },
  },
  created() {
    this.addTags();
  },
  mounted() {
  },
  methods: {
    ...mapMutations(`app`, {
      closeTabSelf: "closeTabSelf",
      closeTabOther: "closeTabOther",
      closeTabAll: "closeTabAll",
      tabClick: "tabClick",
    }),
    addTags() {
      global.$vuex.commit('app/addTab', this.$route);
    },
  },
};
</script>
<style lang="less" scope>
.app-tabs {
  background: #ffffff;
  position: relative;
  left: 0;
  width: 100%;
  z-index: 6;
  box-shadow: 0 1px 4px rgba(0, 21, 41, 0.08);

  .ant-tabs-bar {
    margin: 0 !important;
    border-bottom: 0 !important;

    .ant-tabs-tab {
      background: #ffffff !important;
      border: 0 !important;
      border-radius: 0 !important;
      padding: 0 30px !important;
      line-height: 39px !important;
    }

    .ant-tabs-tab.ant-tabs-tab-active {
      background: #f0f2f5 !important;
    }
  }
}
</style>