using HZY.Repository.Domain.Framework;
using System;
using System.Collections.Generic;

namespace HZY.Admin.Model.Dto
{
    public class SysMenuFormDto
    {
        public SysMenu Form { get; set; }
        public List<Guid> FunctionIds { get; set; }
    }
}