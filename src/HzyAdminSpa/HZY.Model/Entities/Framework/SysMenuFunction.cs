using HZY.Model.BaseEntitys;
using System;

namespace HZY.Model.Entities.Framework
{
    /// <summary>
    /// 菜单与功能绑定
    /// </summary>
    public class SysMenuFunction : DefaultBaseEntity<Guid>
    {
        public Guid MenuId { get; set; }
        public Guid FunctionId { get; set; }
    }
}