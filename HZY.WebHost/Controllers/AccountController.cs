using HZY.Framework.Controllers;
using HZY.Model.FormDto;
using HZY.Services.Account;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace HZY.WebHost.Controllers
{

    [Route("api/[controller]")]
    public class AccountController : FrameworkBaseController
    {
        private const string tokenType = "Bearer ";
        private readonly AccountService _accountService;        

        public AccountController(AccountService accountService)
        {
            _accountService = accountService;
        }

        /// <summary>
        /// 检查帐户并获取 token
        /// </summary>
        /// <param name="authUserDto">Dto</param>
        /// <returns></returns>
        [HttpPost("Check")]
        public async Task<dynamic> CheckAsync([FromBody] AuthUserFormDto authUserDto)
        {
            var token = await this._accountService
                .CheckAccountAsync(authUserDto.UserName, authUserDto.UserPassword, authUserDto.LoginCode);
            return new { token = tokenType + token, tokenType };
        }
    }

}
