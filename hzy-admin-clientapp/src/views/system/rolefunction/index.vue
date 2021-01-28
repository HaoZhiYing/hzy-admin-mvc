<template>
  <div class="p-15">
    <a-row :gutter="[15, 15]">
      <a-col :xs="24" :sm="10" :md="10" :lg="10" :xl="10">
        <a-card class="w100 mb-15" bodyStyle="padding:0" v-show="table.search.state">
          <a-row :gutter="[15, 15]" class="p-15">
            <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="6">
              <a-input v-model:value="table.search.vm.name" placeholder="名称" />
            </a-col>
            <!--button-->
            <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="6" style="float: right">
              <a-button type="primary" class="mr-10" @click="findList">查询</a-button>
              <a-button class="mr-10" @click="onResetSearch">重置</a-button>
            </a-col>
          </a-row>
        </a-card>
        <a-card class="w100" bodyStyle="padding:0">
          <a-row :gutter="20" class="p-15 pb-0">
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12" class="pb-15">
              <template v-if="power.search">
                <a-button
                  type="dashed"
                  class="mr-10"
                  @click="table.search.state = !table.search.state"
                >
                  <div v-if="table.search.state">
                    <AppIcons iconName="UpOutlined" />&nbsp;&nbsp;收起
                  </div>
                  <div v-else><AppIcons iconName="DownOutlined" />&nbsp;&nbsp;展开</div>
                </a-button>
              </template>
            </a-col>
          </a-row>
          <a-table
            :columns="table.columns"
            :data-source="table.data"
            :loading="table.loading"
            :pagination="false"
            tableLayout="fixed"
            rowKey="id"
          >
            <template #id="{ record }">
              <span>
                <a href="javascript:void(0)" @click="goSetUp(record.id)">去设置</a>
              </span>
            </template>
          </a-table>
          <a-pagination
            class="p-20"
            size="small"
            showSizeChanger
            showQuickJumper
            :pageSizeOptions="table.pageSizeOptions"
            v-model:total="table.total"
            v-model:defaultCurrent="table.page"
            v-model:pageSize="table.rows"
            :showTotal="(total) => `共计 ${total} 条`"
            @showSizeChange="onShowSizeChange"
            @change="onChange"
          >
          </a-pagination>
        </a-card>
      </a-col>
      <a-col :xs="24" :sm="14" :md="14" :lg="14" :xl="14">
        <a-table
          rowKey="id"
          :columns="tree.columns"
          :data-source="tree.data"
          :pagination="false"
          :expandedRowKeys="tree.expandedRowKeys"
          size="small"
        >
          <template #action="{ record }">
            <div>
              <a-checkbox-group
                style="display: block"
                v-model:value="record.checkFunction"
                @change="(values) => onChangeCheckbox({ values, id: record.id })"
              >
                <a-row>
                  <a-col :span="4" v-for="item in record.functions" :key="item.id">
                    <a-checkbox :value="item.id">{{ item.label }}</a-checkbox>
                  </a-col>
                </a-row>
              </a-checkbox-group>
            </div>
          </template>
        </a-table>
      </a-col>
    </a-row>
  </div>
</template>
<script>
import AppIcons from "@/components/appIcons";
import tools from "@/scripts/tools";
import service from "@/service/system/rolefunctionService";

//列头
const columns = [
  {
    title: "编号",
    dataIndex: "number",
    ellipsis: true,
    width: 80,
  },
  {
    title: "角色名称",
    dataIndex: "name",
    ellipsis: true,
    width: 150,
  },
  {
    title: "能否删除",
    dataIndex: "isDelete",
    ellipsis: true,
    width: 100,
  },
  {
    title: "备注",
    dataIndex: "remark",
    ellipsis: true,
  },
  // {
  //   title: "更新时间",
  //   dataIndex: "updateTime",
  //   ellipsis: true,
  //   width: 150,
  // },
  // {
  //   title: "创建时间",
  //   dataIndex: "createTime",
  //   ellipsis: true,
  //   width: 150,
  // },
  {
    title: "操作",
    dataIndex: "id",
    width: 120,
    fixed: "right",
    slots: { customRender: "id" },
  },
];

export default {
  name: "system_role_function",
  data() {
    return {
      table: {
        //检索
        search: {
          state: false,
          fieldCount: 2,
          vm: {
            name: "",
          },
        },
        loading: false,
        pageSizeOptions: ["10", "20", "30", "40", "50", "100", "500"],
        rows: 10,
        page: 1,
        total: 0,
        selectedRowKeys: [],
        columns,
        data: [],
      },
      tree: {
        roleId: "",
        columns: [
          {
            title: "菜单",
            dataIndex: "label",
            key: "label",
            width: "200px",
          },
          {
            title: "权限",
            dataIndex: "id",
            key: "id",
            // width: "70%",
            slots: { customRender: "action" },
          },
        ],
        data: [
          {
            checkAll: false,
            checkFunction: [],
            children: [],
            functions: [],
            id: "",
            label: "",
          },
        ],
        expandedRowKeys: [],
        checkAll: false,
      },
    };
  },
  watch: {
    "tree.roleId"(value) {
      this.tree.roleId = value;
      this.getRoleMenuFunctionTree();
    },
  },
  computed: {
    power() {
      //权限
      return tools.getMenuPowerById(this.$route.meta.menuId);
    },
  },
  components: { AppIcons },
  created() {
    this.findList();
  },
  methods: {
    onChange(page, rows) {
      page = page == 0 ? 1 : page;
      this.table.page = page;
      this.table.rows = rows;
      this.findList();
    },
    onShowSizeChange(page, rows) {
      page = page == 0 ? 1 : page;
      this.table.page = page;
      this.table.rows = rows;
      this.findList();
    },
    //重置检索条件
    onResetSearch() {
      let searchVm = this.table.search.vm;
      for (let key in searchVm) {
        searchVm[key] = "";
      }
      this.findList();
    },
    //获取列表数据
    findList() {
      this.table.loading = true;
      service
        .findList(this.table.rows, this.table.page, this.table.search.vm)
        .then((res) => {
          let data = res.data;
          this.table.loading = false;
          this.table.page = data.page;
          this.table.rows = data.size;
          this.table.total = data.total;
          this.table.data = data.dataSource;
          this.tree.roleId = data.dataSource[0].id;
        });
    },
    //删除数据
    deleteList(id) {
      let ids = [];
      if (id) {
        ids.push(id);
      } else {
        ids = this.table.selectedRowKeys;
      }
      service.deleteList(ids).then((res) => {
        if (res.code != 1) return;
        tools.message("删除成功!", "成功");
        this.findList();
      });
    },
    //打开表单页面
    openForm(id) {
      this.form.visible = true;
      this.form.key = id;
    },
    exportExcel() {
      tools.notice("导出Excel成功!", "成功", "提醒");
    },
    exportPdf() {
      tools.notice("导出Pdf成功!", "成功", "提醒");
    },
    //获取角色菜单功能树
    getRoleMenuFunctionTree() {
      service.getRoleMenuFunctionTree(this.tree.roleId).then((res) => {
        let data = res.data;
        this.tree.data = data.list;
        this.tree.expandedRowKeys = data.expandedRowKeys;
      });
    },
    //去设置
    goSetUp(id) {
      this.tree.roleId = id;
      this.getRoleMenuFunctionTree();
    },
    //点击复选框事件
    onChangeCheckbox(data) {
      service
        .saveForm({
          roleId: this.tree.roleId,
          menuId: data.id,
          functionIds: data.values,
        })
        .then(() => {
          this.getRoleMenuFunctionTree();
        });
    },
  },
};
</script>
