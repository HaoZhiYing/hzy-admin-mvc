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
      <a-menu-item
        v-if="item.children.length === 0"
        :key="item.componentName"
        :title="item.name"
      >
        <AppIcons :iconName="item.icon" />
        <span>{{ item.name }}</span>
      </a-menu-item>
      <SubMenus v-else :menu-info="item" :key="item.id" />
    </template>
  </a-menu>
</template>
<script>
import { computed, defineComponent, reactive, toRefs, watch } from "vue";
import AppIcons from "@/components/appIcons.vue";
import router from "@/router/index";
import { useStore } from "vuex";

export default defineComponent({
  name: "layoutMenus",
  components: { AppIcons },
  props: {
    propMenuTheme: {
      type: String,
      required: true,
    },
  },
  setup(props) {
    const routeName = router.currentRoute.value.name;
    const openKeysString = localStorage.getItem("openKeys") ?? "";
    const openKeys = openKeysString ? JSON.parse(openKeysString) ?? [] : [];

    const state = reactive({
      defaultSelectedKeys: [routeName],
      selectedKeys: [routeName],
      openKeys: openKeys,
      menuTheme: props.propMenuTheme,
    });

    watch(
      () => router.currentRoute.value,
      (value) => {
        state.selectedKeys = [value.name];
      }
    );
    watch(
      () => props.propMenuTheme,
      (value) => {
        state.menuTheme = value;
      }
    );

    watch(
      () => state.openKeys,
      (value) => {
        localStorage.setItem("openKeys", JSON.stringify(value));
      }
    );

    const store = useStore();
    const menus = computed(() => store.state.app.userInfo.menus);

    //菜单选中
    const onMenuSelected = (obj) => {
      router.push({ name: obj.key });
    };

    return {
      ...toRefs(state),
      onMenuSelected,
      menus,
    };
  },
});
</script>
