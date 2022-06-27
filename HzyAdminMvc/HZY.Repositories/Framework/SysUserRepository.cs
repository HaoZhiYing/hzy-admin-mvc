using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories.Framework;

public class SysUserRepository : AdminBaseRepository<SysUser>
{
    public SysUserRepository(AdminDbContext context) : base(context)
    {
    }
}