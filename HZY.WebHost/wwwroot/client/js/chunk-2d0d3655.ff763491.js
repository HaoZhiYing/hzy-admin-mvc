(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0d3655"],{"5d1a":function(t,n,e){"use strict";e.r(n);e("99af");var o=e("356f"),c=e("79e1"),a="admin/SysOrganization";n["default"]={findList:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};return Object(o["post"])("".concat(a,"/findList/"),t,!1)},deleteList:function(t){return console.log(t),t&&0===t.length?c["default"].message("请选择要删除的数据!","警告"):Object(o["post"])("".concat(a,"/deleteList"),t,!1)},findForm:function(t,n){return Object(o["get"])("".concat(a,"/findForm/").concat(t||c["default"].guidEmpty,"/").concat(n||""))},saveForm:function(t){return Object(o["post"])("".concat(a,"/saveForm"),t)},exportExcel:function(t){return Object(o["download"])("".concat(a,"/exportExcel"),t)}}}}]);
//# sourceMappingURL=chunk-2d0d3655.ff763491.js.map