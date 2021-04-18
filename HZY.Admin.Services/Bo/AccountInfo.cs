using HZY.Repository.Domain.Framework;
using System;
using System.Collections.Generic;

namespace HZY.Admin.Model.Bo
{
    /// <summary>
    /// 账户 业务对象
    /// </summary>
    public class AccountInfo
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sysUser"></param>
        /// <param name="userId"></param>
        /// <param name="name"></param>
        /// <param name="isAdministrator"></param>
        /// <param name="avatar"></param>
        /// <param name="roles"></param>
        public AccountInfo(SysUser sysUser, Guid userId, string name, bool isAdministrator, string avatar, List<Guid> roles)
        {
            IsAdministrator = isAdministrator;
            SysUser = sysUser;
            Name = name;
            Avatar = avatar;
            Roles = roles;
            UserId = userId;
        }

        /// <summary>
        /// 用户名称
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 头像
        /// </summary>
        public string Avatar { get; set; }

        /// <summary>
        /// 角色 集合
        /// </summary>
        public List<Guid> Roles { get; set; }

        /// <summary>
        /// 用户 Id
        /// </summary>
        public Guid UserId { get; set; }

        /// <summary>
        /// 是否超级管理员
        /// </summary>
        public bool IsAdministrator { get; set; }

        /// <summary>
        /// 用户信息
        /// </summary>
        public SysUser SysUser { get; set; }

        /// <summary>
        /// 菜单集合
        /// </summary>
        public List<Dictionary<string, object>> Menus { get; set; }

        /// <summary>
        /// 菜单功能集合
        /// </summary>
        public List<Dictionary<string, object>> MenuPowers { get; set; }
    }
}