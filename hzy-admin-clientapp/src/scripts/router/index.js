import { createRouter, createWebHashHistory } from 'vue-router';
import NProgress from 'nprogress';
import 'nprogress/nprogress.css';
import tools from '@/scripts/tools';
import defaultRouters from '@/scripts/router/defaultRouters';
import { getDynamicRouters } from '@/scripts/router/dynamicRouters';

const routerHistory = createWebHashHistory(); // createWebHistory();

let vueRouter = createRouter({
    history: routerHistory,
    routes: defaultRouters,
    scrollBehavior: () => ({ y: 0 }),
});

//监听路由
vueRouter.beforeEach((to, from, next) => {
    NProgress.start();
    console.log('路由拦截器=>', from, to);

    if (to.name === "/login") {
        return next();
    }

    if (!tools.getAuthorization()) {
        return next('/login');
    }

    //路由和用户信息 处理
    global.$vuex.dispatch('app/getUserInfo').then(data => {
        //创建动态路由
        let hasRouteLayout = getDynamicRouters(data.menus);
        console.log(vueRouter.getRoutes());
        if (hasRouteLayout) {
            if (getAuthority(data, to)) {
                next()
            } else {
                next('/login');
                // global.$router.push("/login");
            }
        } else {
            vueRouter.replace('/');
        }
    });
});

vueRouter.afterEach(() => {
    NProgress.done();
});

/**
 * 获取权限
 */
function getAuthority(data, to) {
    let menuId = to.meta.menuId;
    if (!menuId) return true;
    if (!data.menuPowers) return true;
    let power = data.menuPowers.find(w => w.menuId == menuId);
    if (!power) return true;
    // console.log('getAuthority=>', data, 'menuid=>', menuId, 'userId=>', userId, power.display);
    //检查页面是否有 display 权限
    return power.display;
}

export default vueRouter