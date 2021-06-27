using System;
using System.Collections.Generic;

namespace HZY.Model.FormDto
{
    public class SysRoleMenuFunctionFormDto
    {
        public Guid RoleId { get; set; }
        public Guid MenuId { get; set; }
        public List<Guid> FunctionIds { get; set; }
    }
}