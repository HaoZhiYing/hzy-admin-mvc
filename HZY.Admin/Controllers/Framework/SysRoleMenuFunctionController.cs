﻿using System;
using System.Threading.Tasks;
using HZY.Admin.Model.Dto;
using HZY.Admin.Services.Framework;
using HZY.Framework.Attributes;
using HZY.Framework.Controllers;
using HZY.Framework.Model;
using HZY.Repository.Entity.Framework;
using HZY.Repository.Attributes;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Admin.Controllers.Framework
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
        /// 获取列表
        /// </summary>
        /// <param name="size"></param>
        /// <param name="page"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("FindList/{size}/{page}")]
        public async Task<ApiResult> FindListAsync([FromRoute] int size, [FromRoute] int page,
            [FromBody] SysRole search)
        {
            return this.ResultOk(await this._sysRoleService.FindListAsync(page, size, search));
        }


        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("SaveForm")]
        public async Task<ApiResult> SaveFormAsync([FromBody] SysRoleMenuFunctionDto form)
        {
            return this.ResultOk(await this.DefaultService.SaveFormAsync(form));
        }

        #region 角色菜单功能 Tree

        /// <summary>
        /// 获取菜单功能树
        /// </summary>
        /// <returns></returns>
        [HttpGet("GetRoleMenuFunctionTree/{RoleId}")]
        public async Task<ApiResult> FindRoleMenuFunctionTreeAsync(Guid roleId)
        {
            var (guids, objects) = await this.DefaultService.GetRoleMenuFunctionTreeAsync(roleId);

            return this.ResultOk(new {expandedRowKeys = guids, list = objects});
        }

        #endregion
    }
}