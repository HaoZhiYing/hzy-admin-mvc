var power = JSON.parse(document.getElementById('hidden_power').value);
var isFindBack = document.getElementById('hidden_isFindBack').value;

var app = new Vue({
    el: "#app",
    data: function () {
        return {
            power,
            prefix: "/api/Admin/SysRole",
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
            }

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
                    ids = t.table.selectedRowKeys.map(w => w.id);
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
                tools.getLayer().close(tools.getLayer().getFrameIndex(window.name));
            }
        }
    }
});