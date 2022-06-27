var power = JSON.parse(document.getElementById('hidden_power').value);
var id = document.getElementById('hidden_id').value;

var app = new Vue({
    el: "#app",
    data: function () {
        return {
            power: power,
            prefix: "/api/Admin/Member",
            vm: {
                id: "",
                form: {},
                sysUser: {}
            },
            loading: false,
            Photo: null,
            Files: [],
            FilesName: [],
            editor: null
        }
    },
    computed: {
        formKey: function () {
            return id ? id : '';
        }
    },
    created: function () {

    },
    mounted: function () {
        this.initEditor();
        this.findForm();
    },
    methods: {
        closeWindow: function () {
            tools.getLayer().close(tools.getLayer().getFrameIndex(window.name));
        },
        findForm() {
            http.get(`${this.prefix}/findForm/${this.formKey}`, {}).then((res) => {
                if (res.code != 1) return;
                this.vm = res.data;
                //处理文件
                if (this.vm.form.filePath) this.FilesName = this.vm.form.filePath.split(',');

                let introduce = this.vm.form.introduce ? this.vm.form.introduce.replace(/'/g, '\'') : "";
                this.editor.txt.html(introduce) // 重新设置编辑器内容
            });
        },
        saveForm() {
            //验证
            if (!this.vm.form.name) return tools.message('名称不能为空!', '警告');

            //组装数据
            var formData = new FormData();
            for (var key in this.vm.form) {
                var value = this.vm.form[key];
                if (!value) continue;
                formData.append(key, value);
            }

            if (this.Photo) formData.append('Photo', this.Photo);

            for (var i = 0; i < this.Files.length; i++) {
                var item = this.Files[i];
                formData.append('Files[' + i + ']', item);
            }

            this.loading = true;
            http.upload(`${this.prefix}/saveForm`, formData).then((res) => {
                this.loading = false;
                if (res.code != 1) return;
                tools.message("操作成功!", "成功");
                this.closeWindow();
            });
        },
        /**
           * 初始化 富文本编辑器
           */
        initEditor: function () {
            let t = this;
            let E = window.wangEditor;
            this.editor = new E('#editor');
            // 设置编辑区域高度为 500px
            this.editor.config.height = 400;
            // 配置 onchange 回调函数
            this.editor.config.onchange = function (newHtml) {
                //console.log('change 之后最新的 html', newHtml)
                t.vm.form.introduce = newHtml;
            }
            // 配置触发 onchange 的时间频率，默认为 200ms
            this.editor.config.onchangeTimeout = 300 // 修改为 500ms

            // 配置 server 接口地址
            this.editor.config.uploadImgServer = "/Upload/Images";
            this.editor.config.uploadFileName = "editorFileImages";
            this.editor.config.uploadImgTimeout = 60 * 1000;
            //z-index
            this.editor.config.zIndex = 10;

            //创建
            this.editor.create();
        },
        photoChange: function (e) {
            let files = e.target.files;
            if (files.length > 0) {
                this.vm.form.photo = tools.getObjectUrl(files[0]); //显示
                this.Photo = files[0];
            }
        },
        fielsChange: function (e) {
            var files = e.target.files;
            if (files.length > 0) {
                this.Files = files;
            }
        },
        //查找带回
        findBack_User: function (isRemove) {
            if (isRemove) {
                //清空信息
                this.vm.form.userId = '';
                this.vm.sysUser.name = '';
                return;
            }
            //打开页面查找带回信息
            var t = this;
            var path = "/Admin/SysUser/Index?findBack=1";

            tools.pageOpen('请选择用户', path, function (row) {
                if (row == null) return;
                t.vm.form.userId = row.id;
                t.vm.sysUser.name = row.name;
            }, 1200, 1000);
        }

    }
});