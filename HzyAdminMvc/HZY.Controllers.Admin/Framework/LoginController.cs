using System.Threading.Tasks;
using HZY.Services.Admin.Framework;
using HZY.Controllers.Admin.ControllersAdmin;
using HZY.Models.DTO;
using HZY.Services.Accounts;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Controllers.Admin.Framework
{
    public class LoginController : AdminBaseController<SysUserService>
    {
        private readonly IAccountService _accountService;

        public LoginController(SysUserService defaultService, IAccountService accountService) : base(defaultService)
        {
            _accountService = accountService;
        }


        [HttpGet(nameof(Index))]
        public IActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 退出登录
        /// </summary>
        /// <returns></returns>
        [HttpGet(nameof(Out))]
        public IActionResult Out()
        {
            //this._accountService.RemoveToken();
            return RedirectToAction(nameof(Index));
        }

        /// <summary>
        /// 检查帐户并获取 token
        /// </summary>
        /// <param name="authUserDto">Dto</param>
        /// <returns></returns>
        [HttpPost("Check")]
        public async Task<dynamic> CheckAccountAsync([FromBody] AuthUserFormDto authUserDto)
        {
            var token = await this._accountService
                .CheckAccountAsync(authUserDto.UserName, authUserDto.UserPassword, authUserDto.LoginCode);

            const string tokenType = "Bearer ";

            return new { token, tokenType };
        }
    }
}