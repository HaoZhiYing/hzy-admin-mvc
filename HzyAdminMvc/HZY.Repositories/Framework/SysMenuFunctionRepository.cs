using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories.Framework;

public class SysMenuFunctionRepository : AdminBaseRepository<SysMenuFunction>
{
    public SysMenuFunctionRepository(AdminDbContext context) : base(context)
    {
    }
}