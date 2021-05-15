<template>
  <div id="login">
    <div class="login-modal"></div>
    <div class="login-container">
      <a-card>
        <div class="login-title">{{ title }}</div>
        <div class="p-20">
          <div class="login-input">
            <div class="form-title">用户名</div>
            <input type="text" v-model="userName" />
          </div>
          <div class="login-input">
            <div class="form-title">密码</div>
            <input type="password" v-model="userPassword" />
          </div>
          <div class="login-btn">
            <a-button type="primary" @click="check" :loading="loading">
              登录
            </a-button>
          </div>
        </div>
      </a-card>
    </div>
  </div>
</template>
<script>
import { computed, defineComponent, reactive, toRefs, ref } from "vue";
//vuex
import { useStore } from "vuex";
import router from "@/router/index";
import tools from "@/scripts/tools";
import loginService from "@/service/system/loginService";

export default defineComponent({
  setup() {
    const state = reactive({
      userName: "admin",
      userPassword: "123456",
    });
    const loading = ref(false);

    const store = useStore();
    const title = computed(() => store.state.app.title);

    store.commit("app/setUserInfo", {});
    tools.delAuthorization();

    const methods = {
      check() {
        if (!state.userName) return tools.message("用户名不能为空!", "警告");
        if (!state.userPassword) return tools.message("密码不能为空!", "警告");
        loading.value = true;
        loginService.login(state.userName, state.userPassword).then((res) => {
          if (res.code !== 1) return;
          tools.setAuthorization(res.data.token);
          loading.value = false;
          router.push("/");
        });
      },
    };

    return {
      ...toRefs(state),
      title,
      ...methods,
      loading,
    };
  },
});
</script>
<style lang="less" scoped>
#login {
  text-align: center;
  position: fixed;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  //可以解开一下注解 放置一个背景图片
  // background: url("../assets/images/login2.jpg") no-repeat;
  // background-size: cover;
  background: #f0f2f5 url("../assets/background.svg") no-repeat 50%;

  .login-modal {
    position: absolute;
    width: 100%;
    height: 100%;
    // background-color: #000000;
    // background: #f0f2f5;
    margin: 0 auto;
    // opacity: 0.3;
  }

  .login-container {
    position: absolute;
    width: 25rem;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);

    .login-title {
      padding: 20px;
      font-size: 25px;
      font-weight: 500;
    }

    .form-title {
      text-align: left;
    }

    .login-btn {
      margin: 50px 0;

      button {
        width: 100%;
      }
    }

    .login-input {
      margin: 30px 0;

      input {
        font-size: 16px;
        padding: 8px 0;
        height: 40px;
        width: 100%;
        border-radius: 0;
        border: none;
        // border-bottom: 1px solid #303133;
        // -webkit-box-shadow: inset 0 0 0 1000px #fff;
        // box-shadow: inset 0 0 0 1000px #fff;
        outline: none;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-transition: 0.3s;
        transition: 0.3s;
        font-weight: 200;
        background: none;
        border-bottom: 1px solid #409eff;
        box-shadow: inset 0 0 0 1000px #fff;
      }

      input:focus {
        border-bottom-color: #409eff;
        -webkit-box-shadow: inset 0 0 0 1000px #fff;
        box-shadow: inset 0 0 0 1000px #fff;
      }
    }

    .ant-card {
      border: 0;
    }

    button {
      padding: 5px 20px;
      font-size: 16px;
      height: 40px;
    }
  }

  @media (max-width: 720px) {
    .login-container {
      width: 100%;

      .ant-card {
        padding: 0;
      }
    }
  }
}
</style>
