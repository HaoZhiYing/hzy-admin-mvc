using HZY.Admin.Model.Dto;
using HZY.Admin.Services.Framework;
using HZY.Repository.Domain.Framework;
using HZY.Repository.Framework;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace HZY.Admin.Controllers.Framework
{
    /// <summary>
    /// 个人中心
    /// </summary>
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
        public async Task<int> ChangePasswordAsync([FromBody] ChangePasswordDto form)
            => await this.DefaultService.ChangePasswordAsync(form.OldPassword, form.NewPassword);

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
