import layout from '@/components/layout/layout';
//路由配置
export default [
    {path: '/login', name: "/login", component: import('@/views/login')},
    {path: '/:pathMatch(.*)', name: 'NotFound', component: import('@/components/notFoundComponent')},
    {
        path: '/redirect',
        component: layout,
        hidden: true,
        children: [
            {
                path: '/redirect/:path(.*)',
                component: import('@/views/redirect'),
            }
        ]
    },
    // {
    //     path: '',
    //     component: layout,
    //     name: "appLayout",
    //     children: [{
    //         path: '',
    //         name: "home",
    //         component: () => import('@/views/home'),
    //         meta: {title: '首页', close: false, keepAlive: true},
    //     }]
    // },
    // {
    //     component: layout,
    //     children: [{
    //         path: '/button',
    //         name: "button",
    //         component: import('@/views/button'),
    //         meta: {title: '按钮', close: true, keepAlive: true},
    //     }]
    // },
    // {
    //     component: layout,
    //     children: [{
    //         path: '/list',
    //         name: "list",
    //         component: import('@/views/list'),
    //         meta: {title: '标准表格', close: true, keepAlive: true},
    //     }]
    // },
    // {
    //     component: layout,
    //     children: [{
    //         path: '/baseList',
    //         name: "base_list",
    //         component: import('@/views/baseList'),
    //         meta: {title: '基础表格', close: true, keepAlive: true},
    //     }]
    // },
    // {
    //     component: layout,
    //     children: [{
    //         path: '/chart/base',
    //         name: "chart_base",
    //         component: import('@/views/chart/base'),
    //         meta: {title: '基础图表', close: true, keepAlive: true},
    //     }]
    // },
    // {
    //     component: layout,
    //     children: [{
    //         path: '/chart/more',
    //         name: "chart_more",
    //         component: import('@/views/chart/more'),
    //         meta: {title: '更多示例', close: true, keepAlive: true},
    //     }]
    // },
    // {
    //     component: layout,
    //     children: [{
    //         path: '/antd/vue/components',
    //         name: "antd_vue_components",
    //         component: import('@/views/antd_vue_components'),
    //         meta: {title: 'Antd Vue3.0组件库', close: true, keepAlive: true},
    //     }]
    // }
];