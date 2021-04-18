using System;
using System.Collections.Generic;
using HZY.Repository.Domain.Framework;

namespace HZY.Admin.Model.Vo
{
    public class UserInfoVo
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="isAdministrator"></param>
        /// <param name="sysUser"></param>
        /// <param name="menus"></param>
        /// <param name="menuPowers"></param>
        /// <param name="name"></param>
        /// <param name="avatar"></param>
        /// <param name="roles"></param>
        /// <param name="userId"></param>
        public UserInfoVo(bool isAdministrator, SysUser sysUser, List<Dictionary<string, object>> menus, List<Dictionary<string, object>> menuPowers, string name, string avatar, List<string> roles, string userId)
        {
            IsAdministrator = isAdministrator;
            SysUser = sysUser;
            Menus = menus;
            MenuPowers = menuPowers;
            Name = name;
            Avatar = avatar;
            Roles = roles;
            UserId = userId;
        }

        /// <summary>
        /// 用户名称
        /// </summary>
        public String Name { get; set; }

        /// <summary>
        /// 头像
        /// </summary>
        public String Avatar { get; set; }

        /// <summary>
        /// 角色 集合
        /// </summary>
        public List<string> Roles { get; set; }

        /// <summary>
        /// 用户 Id
        /// </summary>
        public string UserId { get; set; }

        /// <summary>
        /// 是否超级管理员
        /// </summary>
        public bool IsAdministrator;

        /// <summary>
        /// 用户信息
        /// </summary>
        public SysUser SysUser;

        /// <summary>
        /// 菜单集合
        /// </summary>
        public List<Dictionary<string, object>> Menus;

        /// <summary>
        /// 菜单功能集合
        /// </summary>
        public List<Dictionary<string, object>> MenuPowers;
    }
}