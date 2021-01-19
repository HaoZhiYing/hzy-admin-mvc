import { createApp } from 'vue';
import App from './App';

const app = createApp(App);
app.config.productionTip = false;

//引入覆盖样式
import '@/assets/styles/antdv-cover.less';

//路由
import router from '@/scripts/router/index';
app.use(router);
global.$router = router;

//vuex
import store from '@/scripts/vuex/store';
app.use(store);
global.$vuex = store;

//ant-design-vue
import Antd from 'ant-design-vue';
app.use(Antd);

//dom
app.mount('#app')