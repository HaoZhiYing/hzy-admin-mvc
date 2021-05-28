<template>
  <div class="p-15">
    <a-row :gutter="[15, 15]">
      <a-col :xs="24" :sm="12" :md="12" :lg="5" :xl="5">
        <a-card title="菜单树" class="w100 mb-15">
          <template #extra><a href="javascript:void(0)" @click="getFirst">查看一级</a></template>
          <a-tree
            checkable
            v-model:expanded-keys="menuTree.expandedKeys"
            v-model:auto-expand-parent="menuTree.autoExpandParent"
            v-model:checkedKeys="menuTree.checkedKeys"
            v-model:selectedKeys="menuTree.selectedKeys"
            :tree-data="menuTree.data"
            @select="onSelect"
          />
        </a-card>
      </a-col>
      <a-col :xs="24" :sm="12" :md="12" :lg="19" :xl="19">
        <a-card class="w100 mb-15" bodyStyle="padding:0" v-show="table.search.state">
          <a-row :gutter="[15, 15]" class="p-15">
            <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="4">
              <a-input v-model:value="table.search.vm.name" placeholder="名称" />
            </a-col>
            <!--button-->
            <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="4" style="float: right">
              <a-button type="primary" class="mr-10" @click="findList">查询</a-button>
              <a-button class="mr-10" @click="onResetSearch">重置</a-button>
            </a-col>
          </a-row>
        </a-card>

        <a-card class="w100" bodyStyle="padding:0">
          <a-row :gutter="20" class="p-15 pb-0">
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12" class="pb-15">
              <template v-if="power.search">
                <a-button class="mr-10" @click="table.search.state = !table.search.state">
                  <div v-if="table.search.state"><AppIcons iconName="UpOutlined" />&nbsp;&nbsp;收起</div>
                  <div v-else><AppIcons iconName="DownOutlined" />&nbsp;&nbsp;展开</div>
                </a-button>
              </template>
              <template v-if="power.insert">
                <a-button type="primary" class="mr-10" @click="openForm()">
                  <template #icon>
                    <AppIcons iconName="PlusOutlined" />
                  </template>
                  新建
                </a-button>
              </template>
              <template v-if="power.delete">
                <a-popconfirm title="您确定要删除吗?" @confirm="deleteList()" okText="确定" cancelText="取消">
                  <a-button type="danger" class="mr-10">
                    <template #icon>
                      <AppIcons iconName="DeleteOutlined" />
                    </template>
                    批量删除
                  </a-button>
                </a-popconfirm>
              </template>
            </a-col>
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12" class="pb-15 text-right">
              <!-- <a-button type="primary" class="mr-10" @click="exportExcel">
                导出 Excel
              </a-button> -->
            </a-col>
          </a-row>
          <a-table
            :columns="table.columns"
            :data-source="table.data"
            :loading="table.loading"
            :pagination="false"
            :row-selection="{
              selectedRowKeys: table.selectedRowKeys,
              onChange: (selectedRowKeys) => (table.selectedRowKeys = selectedRowKeys),
            }"
            tableLayout="fixed"
            rowKey="id"
          >
            <template #icon="{text}">
              <AppIcons :iconName="text" />
            </template>
            <template #id="{ record }">
              <div>
                <template v-if="power.update">
                  <a href="javascript:void(0)" @click="openForm(record.id)">修改</a>
                </template>
                <a-divider type="vertical" />
                <template v-if="power.delete">
                  <a-popconfirm title="您确定要删除吗?" @confirm="deleteList(record.id)" okText="确定" cancelText="取消">
                    <a class="text-danger">删除</a>
                  </a-popconfirm>
                </template>
              </div>
            </template>
            <!--展开信息-->
            <!--            <template #expandedRowRender="{ record }">-->
            <!--              <div  style="margin: 0">-->
            <!--                <a-descriptions title="123" bordered>-->
            <!--                  <a-descriptions-item label="父级菜单">-->
            <!--                    {{ record.父级菜单 }}-->
            <!--                  </a-descriptions-item>-->
            <!--                  <a-descriptions-item label="更新时间">-->
            <!--                    {{ record.updateTime }}-->
            <!--                  </a-descriptions-item>-->
            <!--                  <a-descriptions-item label="创建时间">-->
            <!--                    {{ record.createTime }}-->
            <!--                  </a-descriptions-item>-->
            <!--                </a-descriptions>-->
            <!--              </div>-->
            <!--            </template>-->
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
        <!--表单弹层-->
        <a-modal v-model:visible="form.visible" title="编辑" centered @ok="form.visible = false" :width="800" destroyOnClose>
          <template #footer>
            <a-button type="primary" @click="infoForm.saveForm()">提交</a-button>
            <a-button type="danger" ghost @click="form.visible = false">关闭</a-button>
          </template>
          <info v-model:formKey="form.key" ref="infoForm" @onSaveSuccess="onSaveSuccess" v-model:parentMenuId="table.search.vm.parentId" />
        </a-modal>
      </a-col>
    </a-row>
  </div>
</template>
<script>
import { computed, defineComponent, onMounted, reactive, toRefs, ref } from "vue";
import { useStore } from "vuex";
import AppIcons from "@/components/appIcons";
import info from "./info";
import tools from "@/scripts/tools";
import service from "@/service/system/menuService";

//列头
const columns = [
  {
    title: "编号",
    dataIndex: "number",
    ellipsis: true,
    width: 80,
  },
  {
    title: "名称",
    dataIndex: "name",
    ellipsis: true,
    width: 150,
  },
  {
    title: "组件名称",
    dataIndex: "componentName",
    ellipsis: true,
    width: 150,
  },
  {
    title: "组件地址",
    dataIndex: "url",
    ellipsis: true,
  },
  // {
  //   title: "路由地址",
  //   dataIndex: "router",
  //   ellipsis: true,
  // },
  // {
  //   title: "父级菜单",
  //   dataIndex: "父级菜单",
  //   ellipsis: true,
  //   width: 150,
  // },
  {
    title: "图标",
    dataIndex: "icon",
    ellipsis: true,
    width: 80,
    slots: { customRender: "icon" },
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

export default defineComponent({
  name: "system_menu",
  components: { AppIcons, info },
  setup() {
    const store = useStore();
    const state = reactive({
      table: {
        //检索
        search: {
          state: false,
          fieldCount: 2,
          vm: {
            name: "",
            parentId: "",
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
      form: {
        visible: false,
        key: "",
      },
      menuTree: {
        data: [],
        expandedKeys: [],
        autoExpandParent: true,
        checkedKeys: [],
        selectedKeys: [],
      },
    });
    //表单 ref 对象
    const infoForm = ref(null);

    //权限
    const power = computed(() => store.getters["app/getMenuPowerById"]);

    const methods = {
      onChange(page, rows) {
        page = page == 0 ? 1 : page;
        state.table.page = page;
        state.table.rows = rows;
        methods.findList();
      },
      onShowSizeChange(page, rows) {
        page = page == 0 ? 1 : page;
        state.table.page = page;
        state.table.rows = rows;
        methods.findList();
      },
      //重置检索条件
      onResetSearch() {
        let searchVm = state.table.search.vm;
        for (let key in searchVm) {
          if (key == "parentId") continue;
          searchVm[key] = "";
        }
        methods.findList();
      },
      //获取列表数据
      findList() {
        state.table.loading = true;
        service.findList(state.table.rows, state.table.page, state.table.search.vm).then((res) => {
          let data = res.data;
          state.table.loading = false;
          state.table.page = data.page;
          state.table.rows = data.size;
          state.table.total = data.total;
          state.table.data = data.dataSource;
        });
      },
      //删除数据
      deleteList(id) {
        let ids = [];
        if (id) {
          ids.push(id);
        } else {
          ids = state.table.selectedRowKeys;
        }
        service.deleteList(ids).then((res) => {
          if (res.code != 1) return;
          tools.message("删除成功!", "成功");
          methods.getMenusFunctionTree();
          methods.findList();
        });
      },
      //打开表单页面
      openForm(id) {
        state.form.visible = true;
        state.form.key = id;
      },
      //表单保存成功
      onSaveSuccess() {
        state.form.visible = false;
        methods.getMenusFunctionTree();
        methods.findList();
      },
      //获取菜单树
      getMenusFunctionTree() {
        service.getMenusFunctionTree().then((res) => {
          if (res.code != 1) return;
          let data = res.data;
          state.menuTree.data = data.tree;
          state.menuTree.expandedKeys = data.defaultExpandedKeys;
          state.menuTree.checkedKeys = data.defaultCheckedKeys;
        });
      },
      //选中菜单树项
      onSelect(selectedKeys, info) {
        console.log(info);
        state.menuTree.selectedKeys = selectedKeys;
        state.table.search.vm.parentId = selectedKeys[0];
        methods.findList();
      },
      //获取一级菜单
      getFirst() {
        state.menuTree.selectedKeys = [];
        state.table.search.vm.parentId = "";
        methods.findList();
      },
    };

    onMounted(() => {
      methods.getMenusFunctionTree();
      methods.findList();
    });

    return {
      ...toRefs(state),
      ...methods,
      power,
      infoForm,
    };
  },
});
</script>
