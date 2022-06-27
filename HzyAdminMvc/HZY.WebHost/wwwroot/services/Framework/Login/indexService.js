let app = new Vue({
    el: "#app",
    data: {
        userName: 'admin',
        userPassword: '123456',
        loginCode: "",
        loading: false,
    },
    mounted: function () {

    },
    methods: {
        check: function () {
            this.loading = true;
            http.post('/api/Admin/Login/Check', {
                userName: this.userName,
                userPassword: this.userPassword,
                loginCode: this.loginCode
            }).then((r) => {
                this.loading = false;
                if (r.code !== 1) return;
                tools.setCookie(tools.config().tokenKey, r.data.token);
                window.location = '/';
            });
        }
    }
});