using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories.Framework;

public class SysUserRoleRepository : AdminBaseRepository<SysUserRole>
{
    public SysUserRoleRepository(AdminDbContext context) : base(context)
    {
    }
}