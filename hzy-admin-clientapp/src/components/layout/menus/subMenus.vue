<template>
  <a-sub-menu :key="menuInfo.id" v-bind="$attrs">
    <template #title>
      <span>
        <AppIcons :iconName="menuInfo.icon" />
        <span>{{ menuInfo.name }}</span>
      </span>
    </template>
    <template v-for="item in menuInfo.children">
      <a-menu-item v-if="item.children.length === 0" :key="item.componentName" :title="item.name">
        <AppIcons :iconName="item.icon" />
        <span>{{ item.name }}</span>
      </a-menu-item>
      <SubMenus v-else :menu-info="item" :key="item.id" />
    </template>
  </a-sub-menu>
</template>
<script>
import AppIcons from "@/components/appIcons";
export default {
  props: ["menuInfo"],
  components: {
    AppIcons,
  },
};
</script>
