using System;
using System.Linq;
using HZY.Admin.Model.Bo;
using HZY.Framework.Services;
using HZY.Repository.Framework;
using HZY.Common;
using Microsoft.AspNetCore.Http;

namespace HZY.Admin.Services.Framework
{
    /// <summary>
    /// 当前登录账户服务
    /// </summary>
    public class AccountService : AdminBaseService<SysUserRepository>
    {
        private readonly AccountInfo _accountInfo;
        private readonly AppConfiguration _appConfiguration;
        private readonly HttpContext _httpContext;
        private readonly SysUserRoleRepository _sysUserRoleRepository;

        public AccountService(SysUserRepository repository,
            AppConfiguration appConfiguration,
            IHttpContextAccessor httpContextAccessor,
            SysUserRoleRepository sysUserRoleRepository) : base(repository)
        {
            _appConfiguration = appConfiguration;
            _sysUserRoleRepository = sysUserRoleRepository;
            _httpContext = httpContextAccessor.HttpContext;
            this._accountInfo = this.FindAccountInfoByToken();
        }

        /// <summary>
        /// 创建 token 根据账户 id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public string CreateToken(string id)
            => JwtTokenUtil.CreateToken(id, this._appConfiguration.JwtSecurityKey, this._appConfiguration.JwtKeyName);

        /// <summary>
        /// 根据用户信息获取 Account 对象
        /// </summary>
        /// <returns></returns>
        private AccountInfo FindAccountInfoByToken()
        {
            var token = this._httpContext.Request.Headers[this._appConfiguration.AuthorizationKeyName].ToString();

            if (string.IsNullOrWhiteSpace(token))
            {
                return default;
            }

            if (this._httpContext.User.Identity == null)
            {
                return default;
            }

            //var id = JwtTokenUtil.ReadJwtToken(token).ToGuid();
            var id = this._httpContext.User.Identity.Name.ToGuid();

            if (id == Guid.Empty)
            {
                return default;
            }

            var sysUser = this.Repository.FindById(id);
            if (sysUser == null) return default;
            var sysUserRoles = this._sysUserRoleRepository.Select
                    .Where(w => w.UserId == sysUser.Id)
                    .ToList()
                ;

            return new AccountInfo(sysUser,
                id,
                sysUser.Name,
                sysUserRoles.Any(w => w.RoleId == this._appConfiguration.AdminRoleId),
                "",
                sysUserRoles.Select(w => w.RoleId).ToList());
        }

        /// <summary>
        /// 获取当前登录账户信息
        /// </summary>
        /// <returns></returns>
        public AccountInfo GetAccountInfo() => this._accountInfo;
    }
}