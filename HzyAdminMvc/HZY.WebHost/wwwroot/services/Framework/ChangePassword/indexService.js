let app = new Vue({
    el: "#app",
    data: function () {
        return {
            grid: 24,
            vm: {
                oldPassword: null,
                newPassword: null,
                qrPassword: null
            },
            loading: false
        }
    },
    created: function () {

    },
    mounted: function () {

    },
    methods: {
        saveForm: function () {
            let path = "/api/Admin/ChangePassword/SaveForm";

            this.loading = true;
            http.post(path, this.vm).then(res => {
                this.loading = false;
                if (res.code !== 1) return;
                tools.alert('变更成功!即将退出重新登录', '成功');
                setTimeout(function () {
                    top.window.location = '/api/Admin/Login/Out';
                }, 500);
            });
        }
    }
});