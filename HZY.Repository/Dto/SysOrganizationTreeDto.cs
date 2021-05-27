using HZY.Repository.Domain.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Repository.Dto
{
    public class SysOrganizationTreeDto : SysOrganization
    {

        public virtual SysOrganizationTreeDto Parent { get; set; }
        public virtual List<SysOrganizationTreeDto> Children { get; set; } = new List<SysOrganizationTreeDto>();

    }
}
