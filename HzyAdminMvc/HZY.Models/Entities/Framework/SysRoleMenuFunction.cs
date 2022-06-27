using HZY.Models.Entities.BaseEntitys;
using System;

namespace HZY.Models.Entities.Framework;

/// <summary>
/// 角色菜单功能绑定
/// </summary>
public class SysRoleMenuFunction : DefaultBaseEntity<Guid>
{
    public Guid RoleId { get; set; }
    public Guid MenuId { get; set; }
    public Guid FunctionId { get; set; }
}