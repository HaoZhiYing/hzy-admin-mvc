using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using HZY.Common;
using Microsoft.AspNetCore.Mvc;
using HZY.Framework.Permission.Attributes;
using HZY.Framework.Filters;
using HZY.Model.Entities;
using HZY.Controllers.Admin.Framework;
using HZY.Services.Admin.Base;
using HZY.EntityFrameworkCorePlus.Models;
using HZY.EntityFrameworkCorePlus.Attributes;
using HZY.Services.Admin.Framework;
using HZY.Model.Entities.Framework;
using HZY.Model.Bo;
using HZY.Services.Account;
using HZY.Model.FormDto;

namespace HZY.Controllers.Admin.Framework
{
    [ControllerDescriptor("E5D4DA6B-AAB0-4AAA-982F-43673E8152C0")]
    public class SysMenuController : AdminBaseController<SysMenuService>
    {
        private readonly AccountInfo _accountInfo;

        public SysMenuController(SysMenuService defaultService, AccountService accountService) : base(defaultService)
        {
            this._accountInfo = accountService.GetAccountInfo();
        }

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="size"></param>
        /// <param name="page"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        //[ApiResourceCacheFilter(1)]
        [HttpPost("FindList/{size}/{page}")]
        public async Task<PagingViewModel> FindListAsync([FromRoute] int size, [FromRoute] int page, [FromBody] SysMenu search)
        {
            return await this.DefaultService.FindListAsync(page, size, search);
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("DeleteList")]
        public async Task<bool> DeleteListAsync([FromBody] List<Guid> ids)
        {
            await this.DefaultService.DeleteListAsync(ids);
            return true;
        }

        /// <summary>
        /// 查询表单数据
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("FindForm/{id?}")]
        public async Task<Dictionary<string, object>> FindFormAsync([FromRoute] Guid id)
        {
            return await this.DefaultService.FindFormAsync(id);
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("SaveForm")]
        public async Task<SysMenu> SaveFormAsync([FromBody] SysMenuFormDto form)
        {
            return await this.DefaultService.SaveFormAsync(form);
        }

        /// <summary>
        /// 导出Excel
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        [ApiResourceCacheFilter(10)]
        [HttpPost("ExportExcel")]
        public async Task<FileContentResult> ExportExcelAsync([FromBody] SysMenu search)
            => this.File(await this.DefaultService.ExportExcelAsync(search), Tools.GetFileContentType[".xls"].ToStr(),
                $"{Guid.NewGuid()}.xls");

        #region 获取 菜单 树

        /// <summary>
        /// 获取菜单列表 以及 页面按钮权限
        /// </summary>
        /// <returns></returns>
        [HttpGet("FindSysMenuTree")]
        public async Task<object> FindSysMenuTreeAsync()
        {
            var allList = await DefaultService.GetMenusByCurrentRoleAsync();

            return new
            {
                userName = this._accountInfo.Name,
                list = this.DefaultService.CreateMenus(Guid.Empty, allList),
                allList,
                powerState = await this.DefaultService.GetPowerByMenusAsync(allList)
            };
        }

        /// <summary>
        /// 获取菜单功能树
        /// </summary>
        /// <returns></returns>
        [HttpGet("GetMenusFunctionTree")]
        public async Task<object> FindMenuFunctionTreeAsync()
        {
            var menuFunctionTree = await this.DefaultService.GetMenuFunctionTreeAsync();

            return new
            {
                tree = menuFunctionTree.Item1,
                defaultExpandedKeys = menuFunctionTree.Item2,
                defaultCheckedKeys = menuFunctionTree.Item3
            };
        }

        #endregion
    }
}