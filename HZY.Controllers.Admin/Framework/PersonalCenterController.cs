using HZY.Framework.Controllers;
using HZY.Framework.Permission.Attributes;
using HZY.Model.Entities.Framework;
using HZY.Model.FormDto;
using HZY.Repository.Framework;
using HZY.Services.Account;
using HZY.Services.Admin.Framework;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace HZY.Controllers.Admin.Framework
{
    /// <summary>
    /// 个人中心
    /// </summary>
    [ControllerDescriptor()]
    public class PersonalCenterController : AdminBaseController<SysUserService>
    {
        private readonly AccountService _accountService;
        private readonly SysUserRepository _sysUserRepository;

        public PersonalCenterController(SysUserService defaultService, AccountService accountService, SysUserRepository sysUserRepository) : base(defaultService)
        {
            _accountService = accountService;
            _sysUserRepository = sysUserRepository;
        }

        /// <summary>
        /// 更新密码
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [HttpPost("ChangePassword")]
        public async Task<int> ChangePasswordAsync([FromBody] ChangePasswordFormDto form)
            => await this._accountService.ChangePasswordAsync(form.OldPassword, form.NewPassword);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [HttpPost("SaveForm")]
        public async Task<SysUser> SaveFormAsync([FromBody] SysUser form)
        {
            var accountInfo = _accountService.GetAccountInfo();
            var sysUser = await _sysUserRepository.FindByIdAsync(accountInfo.Id);
            sysUser.Name = form.Name;
            sysUser.LoginName = form.LoginName;
            sysUser.Email = form.Email;
            sysUser.Phone = form.Phone;
            return await _sysUserRepository.InsertOrUpdateAsync(sysUser);
        }


    }
}
