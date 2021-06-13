using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysRoleMenuFunctionRepository : AdminBaseRepository<SysRoleMenuFunction>
    {
        public SysRoleMenuFunctionRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}