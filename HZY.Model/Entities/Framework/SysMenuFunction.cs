using System;

namespace HZY.Model.Entities.Framework
{
    /// <summary>
    /// 菜单与功能绑定
    /// </summary>
    public class SysMenuFunction : BaseEntity<Guid>
    {
        public Guid MenuId { get; set; }
        public Guid FunctionId { get; set; }
    }
}