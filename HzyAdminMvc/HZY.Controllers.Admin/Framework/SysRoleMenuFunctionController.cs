using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using HZY.Services.Admin.Framework;
using HZY.Controllers.Admin.ControllersAdmin;
using HZY.Infrastructure;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.BO;
using HZY.Models.DTO;
using HZY.Models.Entities.Framework;
using Microsoft.AspNetCore.Mvc;
using HZY.EFCore.PagingViews;

namespace HZY.Controllers.Admin.Framework
{
    [ControllerDescriptor("38d864ff-f6e7-43af-8c5c-8bbcf9fa586d")]
    public class SysRoleMenuFunctionController : AdminBaseController<SysRoleMenuFunctionService>
    {
        private readonly SysRoleService _sysRoleService;

        public SysRoleMenuFunctionController(SysRoleMenuFunctionService defaultService,
            SysRoleService sysRoleService) : base(defaultService)
        {
            _sysRoleService = sysRoleService;
        }

        /// <summary>
        /// 列表页
        /// </summary>
        /// <returns></returns>
        [HttpGet(nameof(Index))]
        public IActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="page"></param>
        /// <param name="rows"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("FindList/{rows}/{page}")]
        public async Task<PagingView> FindListAsync([FromRoute] int page, [FromRoute] int rows, [FromBody] SysRole search)
        {
            return await this._sysRoleService.FindListAsync(page, rows, search);
        }


        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [HttpPost("SaveForm")]
        public async Task<Guid> SaveFormAsync([FromBody] SysRoleMenuFunctionFormDto form)
        {
            return await this.DefaultService.SaveFormAsync(form);
        }

        #region 角色菜单功能 Tree

        /// <summary>
        /// 获取菜单功能树
        /// </summary>
        /// <returns></returns>
        [HttpGet("FindRoleMenuFunctionTree/{RoleId}")]
        public async Task<dynamic> FindRoleMenuFunctionTreeAsync(Guid roleId)
        {
            var (guids, objects) = await this.DefaultService.GetRoleMenuFunctionTreeAsync(roleId);

            return new { expandedRowKeys = guids, list = objects };
        }

        #endregion
    }
}