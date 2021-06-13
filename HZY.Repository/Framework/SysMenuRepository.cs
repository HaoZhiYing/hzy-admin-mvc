﻿using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysMenuRepository : AdminBaseRepository<SysMenu>
    {
        public SysMenuRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}