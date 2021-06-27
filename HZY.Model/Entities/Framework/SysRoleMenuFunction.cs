using System;

namespace HZY.Model.Entities.Framework
{
    /// <summary>
    /// 角色菜单功能绑定
    /// </summary>
    public class SysRoleMenuFunction : BaseModel<Guid>
    {
        public Guid RoleId { get; set; }
        public Guid MenuId { get; set; }
        public Guid FunctionId { get; set; }
    }
}