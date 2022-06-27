using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories.Framework;

public class SysMenuRepository : AdminBaseRepository<SysMenu>
{
    public SysMenuRepository(AdminDbContext context) : base(context)
    {
    }
}