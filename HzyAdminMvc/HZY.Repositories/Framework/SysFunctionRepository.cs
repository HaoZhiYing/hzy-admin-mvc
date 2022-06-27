using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories.Framework;

public class SysFunctionRepository : AdminBaseRepository<SysFunction>
{
    public SysFunctionRepository(AdminDbContext context) : base(context)
    {
    }
}