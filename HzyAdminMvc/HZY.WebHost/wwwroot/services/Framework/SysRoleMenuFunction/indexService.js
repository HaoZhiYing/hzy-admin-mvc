var power = JSON.parse(document.getElementById('hidden_power').value);
var isFindBack = document.getElementById('hidden_isFindBack').value;

var app = new Vue({
    el: "#app",
    data: function () {
        return {
            power,
            prefix: "/api/Admin/SysRoleMenuFunction",
            table: {
                //检索
                search: {
                    state: false,
                    vm: {
                        name: ""
                    },
                },
                rows: 10,
                page: 1,
                total: 0,
                selectedRowKeys: [],
                columns: [],
                data: [],
            },
            roleId: null,
            tree: []

        }
    },
    created: function () {
        this.findList();
    },
    mounted: function () {

    },
    methods: {
        //重置检索条件
        onResetSearch() {
            let searchVm = this.table.search.vm;
            for (let key in searchVm) {
                searchVm[key] = "";
            }
            this.findList();
        },
        //检索
        searchEvent: function () {
            this.table.page = 1;
            this.findList();
        },
        //获取列表数据
        findList() {
            this.table.loading = true;
            http.post(`${this.prefix}/findlist/${this.table.rows}/${this.table.page}`, this.table.search.vm)
                .then((res) => {
                    let data = res.data;
                    this.table.loading = false;
                    this.table.page = data.page;
                    this.table.rows = data.size;
                    this.table.total = data.total;
                    this.table.columns = data.columns;
                    this.table.data = data.dataSource;
                    //选择第一个角色加载他的权限列表
                    if (this.table.data.length > 0) {
                        this.roleId = this.table.data[0].id;
                        this.getRoleMenuFunctionTree();
                    }

                });
        },
        //删除数据
        deleteList(id) {
            let t = this;
            tools.confirm("确定要删除吗?", function () {
                let ids = [];
                if (id) {
                    ids.push(id);
                } else {
                    ids = t.table.selectedRowKeys;
                }
                if (ids && ids.length === 0) {
                    return tools.message("请选择要删除的数据!", "警告");
                }
                http.post(`${t.prefix}/deleteList`, ids).then((res) => {
                    if (res.code != 1) return;
                    tools.message("删除成功!", "成功");
                    t.findList();
                });
            });
        },
        //打开表单页面
        info(id) {
            let t = this;
            tools.pageOpen('编辑', `${this.prefix}/info/${id ? id : ''}`, function () {
                t.findList();
            }, 600, 600);
        },
        //导出
        exportExcel() {
            http.download(`${this.prefix}/exportExcel`, this.table.search.vm);
        },
        //双击表格行
        row_dblclick: function (row, column, event) {
            if (isFindBack === '1') {
                window.localStorage.setItem('findBack', JSON.stringify(row));
                //hzyAdmin.layer.close(hzyAdmin.layer.getFrameIndex(window.name));
            }
        },
        getRoleMenuFunctionTree: function () {
            var t = this;
            if (!this.roleId) return tools.message('请选择要设置的角色!', '警告');
            var path = t.prefix + "/FindRoleMenuFunctionTree/" + (this.roleId ? this.roleId : '');

            http.get(path, {}).then(res => {
                if (res.code !== 1) return;
                t.tree = res.data.list;
            });
        },
        saveFunctions: function (funs, id) {
            var t = this;
            var path = t.prefix + "/SaveForm";

            http.post(path, {
                roleId: this.roleId,
                menuId: id,
                functionIds: funs
            }).then(res => {
                if (res.code !== 1) return;
            });
        },
        //全选/全不选
        onCheckAllChange(e, row) {
            console.log(e, row);
            if (e) {
                row.checkFunction = row.functions.map((w) => w.key);
                row.indeterminate = row.checkFunction.length > 0 && row.checkFunction.length < row.functions.length;
                row.checkAll = row.checkFunction.length === row.functions.length;
            } else {
                row.checkFunction = [];
                row.indeterminate = false;
            }

           this.saveFunctions(row.checkFunction, row.key);
        },
    }
});