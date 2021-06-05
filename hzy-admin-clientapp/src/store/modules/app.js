// import { createStore } from 'vuex';
//属性状态管理
import tools from '@/scripts/tools'
import store from '@/store/index'
import router from '@/router/index'
import userService from "@/service/system/userService";

function getTabs() {
    return [{
        path: "",
        name: "home",
        meta: { title: '首页', close: false, keepAlive: true }
    }];
}

export default {
    namespaced: true,
    state: () => ({
        tabList: getTabs(),
        //缓存视图
        cacheViews: ["home"],
        title: "HzyAdminSpa",
        topNav: tools.getTopNav(),
        userInfo: {},
        submenus: []
    }),
    mutations: {
        //添加缓存视图
        addCacheView(state, value) {
            const { name, meta } = value;
            if (!meta.keepAlive) return;
            let any = state.cacheViews.includes(name);
            if (any) return;
            state.cacheViews.push(name);
        },
        //删除缓存视图
        delCacheView(state, value) {
            const index = state.cacheViews.indexOf(value);
            state.cacheViews.splice(index, 1);
        },
        //删除其他缓存视图
        delCacheViewOther(state, value) {
            const index = state.cacheViews.indexOf(value)
            if (index > -1) {
                state.cacheViews = state.cacheViews.slice(index, index + 1)
            } else {
                state.cacheViews = []
            }
        },
        //删除所有缓存视图
        delCacheViewAll(state) {
            state.cacheViews = [];
        },
        //添加标签页
        addTab(state, value) {
            const { hidden, meta } = value;

            if (Object.prototype.hasOwnProperty.call(value, 'hidden') && hidden) return;

            if (!Object.prototype.hasOwnProperty.call(meta, 'close')) return;

            //检查是否存在
            let tab = state.tabList.find(w => w.name == value.name);
            if (!tab) {
                state.tabList.push(value);
            }

            store.commit("app/addCacheView", value);
        },
        //关闭当前
        closeTabSelf(state, value) {
            let index = state.tabList.findIndex(w => w.name == value);
            let oldTab = state.tabList[index];
            if (oldTab.meta.close) {
                state.tabList.splice(index, 1);
                store.commit("app/delCacheView", oldTab.name);
            }
            let tab = state.tabList[index - 1];
            if (!tab) return;
            router.push({ name: tab.name });
        },
        //关闭其他
        closeTabOther(state, value) {
            let name = value;
            let list = [];
            for (let i = 0; i < state.tabList.length; i++) {
                let item = state.tabList[i];
                if (!item.meta.close || item.name == name) {
                    list.push(item);
                }
            }

            let route = router.currentRoute.value;
            if (value != route.name) {
                router.push({ name: value });
            }

            store.commit("app/delCacheViewOther", name);
            state.tabList = list;
        },
        //关闭所有
        closeTabAll(state) {
            let tab = state.tabList.find(w => !w.meta.close);
            let route = router.currentRoute.value;

            if (tab.name != route.name) {
                router.push({ name: tab.name });
            }

            state.tabList = [];
            state.tabList.push(tab);

            store.commit("app/delCacheViewAll");
        },
        //点击切换选项卡
        tabClick(state, value) {
            router.push({ name: value });
        },
        //设置用户信息
        setUserInfo(state, value) {
            state.userInfo = value;
        },
        //设置子菜单
        setSubmenu(state, parentId) {
            var menus = state.userInfo.menus.filter((w) => w.id == parentId);
            if (menus.length > 0) {
                state.submenus = menus[0].children;
            }
        },
        //设置 TopNav
        setTopNav(state, value) {
            state.topNav = value;
            tools.setTopNav(value);
        },
        // getTopNav(){

        // }
    },
    getters: {
        /**
        * 根据菜单 Id 获取 菜单所 对应的 权限
        * @param menuId
        * @returns {*}
        */
        getMenuPowerById(state) {
            let route = router.currentRoute.value;
            const data = state.userInfo.menuPowers.find(w => w.menuId == route.meta.menuId);
            return data ? data : {};
        },
        /**
         * 根据最后id 查找 最上级 id
         */
        getTopMenuByLastId(state) {
            let route = router.currentRoute.value;
            let currentMenuId = route.meta.menuId;
            let allMenus = state.userInfo.menus;
            let topMenuId = null;

            const findId = (menus, id) => {
                for (let index = 0; index < menus.length; index++) {
                    const element = menus[index];
                    if (element.id == currentMenuId) {
                        topMenuId = id;
                        break;
                    }
                    if (element.children.length > 0) {
                        findId(element.children, element.parentId ? null : element.id);
                    }
                }
            }

            findId(allMenus, null);

            return topMenuId;
        }
    },
    actions: {
        delCacheView({ commit, state }, view) {
            return new Promise(resolve => {
                commit('delCacheView', view)
                resolve([...state.cacheViews])
            })
        },
        //获取用户信息 与 菜单
        getUserInfo({ state }) {
            return new Promise(resolve => {
                if (Object.prototype.hasOwnProperty.call(state.userInfo, 'sysRoles')) {
                    return resolve(state.userInfo)
                }
                store.dispatch("app/refreshUserInfo").then(data => {
                    resolve(data)
                });
            })
        },
        //刷新用户信息
        refreshUserInfo({ commit }) {
            return new Promise(resolve => {
                userService.getUserInfo().then(res => {
                    let data = res.data;
                    commit('setUserInfo', data);
                    resolve(data)
                });
            })
        }
    }
}