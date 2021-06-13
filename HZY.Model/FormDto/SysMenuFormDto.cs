using HZY.Model.Entities.Framework;
using System;
using System.Collections.Generic;

namespace HZY.Model.FormDto
{
    public class SysMenuFormDto
    {
        public SysMenu Form { get; set; }
        public List<Guid> FunctionIds { get; set; }
    }
}