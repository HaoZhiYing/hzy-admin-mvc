using HZY.Common;
using HZY.Repository.AppCore.DbContexts;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.Domain.Framework;
using HZY.Repository.Dto;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace HZY.Repository.Framework
{
    public class SysOrganizationRepository : AdminBaseRepository<SysOrganization>
    {
        public SysOrganizationRepository(AdminBaseDbContext context) : base(context)
        {

        }




    }
}
