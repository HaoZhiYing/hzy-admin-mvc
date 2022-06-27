using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories.Framework;

public class SysRoleRepository : AdminBaseRepository<SysRole>
{
    public SysRoleRepository(AdminDbContext context) : base(context)
    {

    }
}