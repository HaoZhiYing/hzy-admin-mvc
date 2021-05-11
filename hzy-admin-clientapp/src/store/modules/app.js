//属性状态管理
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
        userInfo: {}
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

            let route = router.currentRoute;
            if (value != route.name) {
                router.push({ name: value });
            }

            store.commit("app/delCacheViewOther", name);
            state.tabList = list;
        },
        //关闭所有
        closeTabAll(state) {
            let tab = state.tabList.find(w => !w.meta.close);
            let route = router.currentRoute;

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
        getUserInfo({ commit, state }) {
            return new Promise(resolve => {
                if (Object.prototype.hasOwnProperty.call(state.userInfo, 'roles')) {
                    resolve(state.userInfo)
                } else {
                    userService.getUserInfo().then(res => {
                        let data = res.data;
                        commit('setUserInfo', data);
                        resolve(data)
                    });
                }
            })

        }
    },
    getters: {}
}