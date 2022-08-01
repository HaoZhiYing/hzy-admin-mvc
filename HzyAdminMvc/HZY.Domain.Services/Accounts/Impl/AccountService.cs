using HZY.EFCore.Repositories.Admin.Core;
using HZY.Infrastructure;
using HZY.Infrastructure.ApiResultManage;
using HZY.Infrastructure.Services;
using HZY.Infrastructure.Token;
using HZY.Models.BO;
using HZY.Models.Entities.Framework;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace HZY.Domain.Services.Accounts.Impl;

/// <summary>
/// 当前登录账户服务
/// </summary>
public class AccountService : IAccountService
{
    private readonly AccountInfo _accountInfo;
    private readonly AppConfiguration _appConfiguration;
    private readonly TokenService _tokenService;
    private readonly IAdminRepository<SysUser> _sysUserRepository;

    public AccountService(IAdminRepository<SysUser> sysUserRepository,
        AppConfiguration appConfiguration,
        TokenService tokenService)
    {
        _sysUserRepository = sysUserRepository;
        _appConfiguration = appConfiguration;
        _tokenService = tokenService;
        _accountInfo = FindAccountInfoByToken();
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

        var sysUser = _sysUserRepository.FindById(id);
        if (sysUser == null) return default;
        var sysRoles = (
            from sysUserRole in _sysUserRepository.Orm.SysUserRole.AsQueryable()
            from sysRole in _sysUserRepository.Orm.SysRole.AsQueryable().Where(w => w.Id == sysUserRole.RoleId).DefaultIfEmpty()
            where sysUserRole.UserId == id
            select sysRole
            ).ToList();

        var accountInfo = new AccountInfo();
        accountInfo = sysUser.MapTo<SysUser, AccountInfo>();
        accountInfo.IsAdministrator = sysRoles.Any(w => w.Id == _appConfiguration.Configs.AdminRoleId);
        accountInfo.SysRoles = sysRoles;

        return accountInfo;
    }

    /// <summary>
    /// 获取当前登录账户信息
    /// </summary>
    /// <returns></returns>
    public virtual AccountInfo GetAccountInfo() => _accountInfo;

    /// <summary>
    /// 检查账户 登录信息 并返回 token
    /// </summary>
    /// <param name="name"></param>
    /// <param name="password"></param>
    /// <param name="code"></param>
    /// <returns></returns>
    public virtual async Task<string> CheckAccountAsync(string name, string password, string code)
    {
        if (string.IsNullOrWhiteSpace(name))
            MessageBox.Show("请输入账户名!");
        if (string.IsNullOrWhiteSpace(password))
            MessageBox.Show("请输入密码！");
        // if (string.IsNullOrWhiteSpace(code))
        //  MessageBox.Show("请输入验证码!");
        var sysUser = await _sysUserRepository.FindAsync(w => w.LoginName == name);
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
    public virtual async Task<int> ChangePasswordAsync(string oldPassword, string newPassword)
    {
        if (string.IsNullOrEmpty(oldPassword)) MessageBox.Show("旧密码不能为空！");
        if (string.IsNullOrEmpty(newPassword)) MessageBox.Show("新密码不能为空！");
        var sysUser = await _sysUserRepository.FindByIdAsync(GetAccountInfo().Id);
        if (sysUser.Password != oldPassword) MessageBox.Show("旧密码不正确！");
        sysUser.Password = newPassword;
        return await _sysUserRepository.UpdateAsync(sysUser);
    }

}