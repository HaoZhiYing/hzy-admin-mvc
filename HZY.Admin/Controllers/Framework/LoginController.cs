using System.Threading.Tasks;
using HZY.Admin.Model.Dto;
using HZY.Admin.Services.Framework;
using HZY.Framework.Controllers;
using HZY.Framework.Model;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Admin.Controllers.Framework
{
    [Route("Admin/[controller]")]
    public class LoginController : FrameworkBaseController
    {
        private readonly SysUserService _sysUserService;

        public LoginController(SysUserService sysUserService)
        {
            _sysUserService = sysUserService;
        }

        /// <summary>
        /// 检查帐户并获取 token
        /// </summary>
        /// <param name="authUserDto">Dto</param>
        /// <returns></returns>
        [HttpPost("Check")]
        public async Task<ApiResult> CheckAccountAsync([FromBody] AuthUserDto authUserDto)
        {
            var token = await this._sysUserService
                .CheckAccountAsync(authUserDto.UserName, authUserDto.UserPassword, authUserDto.LoginCode);

            const string tokenType = "Bearer ";

            return this.ResultOk(new {token = tokenType + token, tokenType});
        }
    }
}