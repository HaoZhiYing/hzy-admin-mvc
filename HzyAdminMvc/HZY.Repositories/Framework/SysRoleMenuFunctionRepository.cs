using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories.Framework;

public class SysRoleMenuFunctionRepository : AdminBaseRepository<SysRoleMenuFunction>
{
    public SysRoleMenuFunctionRepository(AdminDbContext context) : base(context)
    {

    }
}