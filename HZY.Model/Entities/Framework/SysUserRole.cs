using System;

namespace HZY.Model.Entities.Framework
{
    /// <summary>
    /// 用户与角色绑定
    /// </summary>
    public class SysUserRole : BaseEntity<Guid>
    {
        public Guid UserId { get; set; }
        public Guid RoleId { get; set; }
    }
}