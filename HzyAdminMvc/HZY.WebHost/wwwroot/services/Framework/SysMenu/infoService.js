var power = JSON.parse(document.getElementById('hidden_power').value);
var id = document.getElementById('hidden_id').value;
var pId = document.getElementById('hidden_pId').value;
var app = new Vue({
    el: "#app",
    data: function () {
        return {
            power: power,
            prefix: "/api/Admin/SysMenu",
            pId: pId,
            vm: {
                id: "",
                form: {},
                functionAllList: [],
                functionIds: []
            },
            loading: false,
        }
    },
    computed: {
        formKey: function () {
            return id ? id : '';
        }
    },
    created: function () {
        this.findForm();
    },
    mounted: function () {

    },
    methods: {
        closeWindow: function () {
            tools.getLayer().close(tools.getLayer().getFrameIndex(window.name));
        },
        findForm() {
            http.get(`${this.prefix}/findForm/${this.formKey}`, {}).then((res) => {
                if (res.code != 1) return;
                this.vm = res.data;
                //给pid赋值
                this.vm.form.parentId = this.pId ? this.pId : null;
            });
        },
        saveForm() {
            //验证
            if (!this.vm.form.name) return tools.message('用户名不能为空!', '警告');

            this.loading = true;
            http.post(`${this.prefix}/saveForm`, this.vm).then((res) => {
                this.loading = false;
                if (res.code != 1) return;
                tools.message("操作成功!", "成功");
                this.closeWindow();
            });
        }
    }
});