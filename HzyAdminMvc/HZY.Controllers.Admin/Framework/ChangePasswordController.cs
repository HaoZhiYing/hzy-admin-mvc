using System.Threading.Tasks;
using HZY.Services.Admin.Framework;
using HZY.Controllers.Admin.ControllersAdmin;
using HZY.Models.DTO;
using HZY.Services.Accounts;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Controllers.Admin.Framework
{
    public class ChangePasswordController : AdminBaseController<IAccountService>
    {
        public ChangePasswordController(IAccountService defaultService) : base(defaultService)
        {
        }

        #region 页面 Views

        [HttpGet(nameof(Index))]
        public IActionResult Index() => View();

        #endregion

        /// <summary>
        /// 更新密码
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [HttpPost("SaveForm")]
        public async Task<int> SaveFormAsync([FromBody] ChangePasswordFormDto form)
            => await this.DefaultService.ChangePasswordAsync(form.OldPassword, form.NewPassword);
    }
}