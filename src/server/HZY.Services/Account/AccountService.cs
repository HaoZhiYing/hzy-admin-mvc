using System;
using System.Linq;
using HZY.Repository.Framework;
using HZY.Common;
using Microsoft.AspNetCore.Http;
using HZY.Model.Bo;
using HZY.Model.Entities.Framework;
using HZY.Framework.Services;
using System.Threading.Tasks;
using HZY.Framework.ApiResultManage;
using Microsoft.EntityFrameworkCore;
using HZY.Common.Token;

namespace HZY.Services.Account
{
    /// <summary>
    /// 当前登录账户服务
    /// </summary>
    public class AccountService : FrameworkBaseService<SysUserRepository>
    {
        private readonly AccountInfo _accountInfo;
        private readonly AppConfiguration _appConfiguration;
        private readonly TokenService _tokenService;

        public AccountService(SysUserRepository repository,
            AppConfiguration appConfiguration,
            TokenService tokenService) : base(repository)
        {
            _appConfiguration = appConfiguration;
            _tokenService = tokenService;
            this._accountInfo = this.FindAccountInfoByToken();
        }

        /// <summary>
        /// 根据用户信息获取 Account 对象
        /// </summary>
        /// <returns></returns>
        private AccountInfo FindAccountInfoByToken()
        {
            var id = _tokenService.GetAccountIdByToken();

            if (id == Guid.Empty)
            {
                return default;
            }

            var sysUser = this.Repository.FindById(id);
            if (sysUser == null) return default;
            var sysRoles = (
                from sysUserRole in this.Repository.Orm.SysUserRole
                from sysRole in this.Repository.Orm.SysRole.Where(w => w.Id == sysUserRole.RoleId).DefaultIfEmpty()
                where sysUserRole.UserId == id
                select sysRole
                ).ToList();

            var sysPosts = (
                from sysUserPost in this.Repository.Orm.SysUserPost
                from sysPost in this.Repository.Orm.SysPost.Where(w => w.Id == sysUserPost.PostId).DefaultIfEmpty()
                where sysUserPost.UserId == id
                select sysPost
                ).ToList();

            var sysOrganization = this.Repository.Orm.SysOrganization.FirstOrDefault(w => w.Id == sysUser.OrganizationId);

            var accountInfo = new AccountInfo();
            accountInfo = sysUser.MapTo<SysUser, AccountInfo>();
            accountInfo.IsAdministrator = sysRoles.Any(w => w.Id == this._appConfiguration.AdminRoleId);
            accountInfo.SysRoles = sysRoles;
            accountInfo.SysPosts = sysPosts;
            accountInfo.SysOrganization = sysOrganization;

            return accountInfo;
        }

        /// <summary>
        /// 获取当前登录账户信息
        /// </summary>
        /// <returns></returns>
        public AccountInfo GetAccountInfo() => this._accountInfo;

        /// <summary>
        /// 检查账户 登录信息 并返回 token
        /// </summary>
        /// <param name="name"></param>
        /// <param name="password"></param>
        /// <param name="code"></param>
        /// <returns></returns>
        public async Task<string> CheckAccountAsync(string name, string password, string code)
        {
            if (string.IsNullOrWhiteSpace(name))
                MessageBox.Show("请输入账户名!");
            if (string.IsNullOrWhiteSpace(password))
                MessageBox.Show("请输入密码！");
            // if (string.IsNullOrWhiteSpace(code))
            //  MessageBox.Show("请输入验证码!");
            var sysUser = await this.Repository.Select.Where(w => w.LoginName == name).FirstOrDefaultAsync();
            if (sysUser == null)
            {
                MessageBox.Show("账户不存在!");
            }

            //Tools.Md5Encrypt(password)))
            if (sysUser?.Password.Trim() != password)
            {
                MessageBox.Show("密码错误!");
            }

            //string code = Tools.GetCookie("loginCode");
            //if (string.IsNullOrEmpty(code)) throw new MessageBox("验证码失效");
            //if (!code.ToLower().Equals(loginCode.ToLower())) throw new MessageBox("验证码不正确");

            return _tokenService.CreateTokenByAccountId(sysUser.Id);
        }

        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="oldPassword"></param>
        /// <param name="newPassword"></param>
        /// <returns></returns>
        public async Task<int> ChangePasswordAsync(string oldPassword, string newPassword)
        {
            if (string.IsNullOrEmpty(oldPassword)) MessageBox.Show("旧密码不能为空！");
            if (string.IsNullOrEmpty(newPassword)) MessageBox.Show("新密码不能为空！");
            var sysUser = await this.Repository.FindByIdAsync(this.GetAccountInfo().Id);
            if (sysUser.Password != oldPassword) MessageBox.Show("旧密码不正确！");
            sysUser.Password = newPassword;
            return await this.Repository.UpdateAsync(sysUser);
        }

    }
}