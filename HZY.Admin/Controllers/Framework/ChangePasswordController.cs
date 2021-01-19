﻿using System.Threading.Tasks;
using HZY.Admin.Model.Dto;
using HZY.Admin.Services.Framework;
using HZY.Framework.Controllers;
using HZY.Framework.Model;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Admin.Controllers.Framework
{
    public class ChangePasswordController : AdminBaseController<SysUserService>
    {
        public ChangePasswordController(SysUserService defaultService) : base(defaultService)
        {
        }

        /// <summary>
        /// 更新密码
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [HttpPost("SaveForm")]
        public async Task<ApiResult> ChangePasswordAsync([FromBody] ChangePasswordDto form)
            => this.ResultOk(await this.DefaultService.ChangePasswordAsync(form.OldPassword, form.NewPassword));
    }
}