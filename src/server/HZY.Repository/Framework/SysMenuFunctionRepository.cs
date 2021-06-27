using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysMenuFunctionRepository : AdminBaseRepository<SysMenuFunction>
    {
        public SysMenuFunctionRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}