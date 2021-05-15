using System.Threading.Tasks;
using HZY.Admin.Model.Dto;
using HZY.Admin.Services.Framework;
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
        public async Task<int> ChangePasswordAsync([FromBody] ChangePasswordDto form)
            => await this.DefaultService.ChangePasswordAsync(form.OldPassword, form.NewPassword);
    }
}