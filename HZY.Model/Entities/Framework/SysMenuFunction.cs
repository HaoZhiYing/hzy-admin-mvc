using System;

namespace HZY.Model.Entities.Framework
{
    /// <summary>
    /// 菜单与功能绑定
    /// </summary>
    public class SysMenuFunction : BaseModel<Guid>
    {
        public Guid MenuId { get; set; }
        public Guid FunctionId { get; set; }
    }
}