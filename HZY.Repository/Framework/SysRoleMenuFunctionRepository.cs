using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysRoleMenuFunctionRepository : AdminBaseRepository<SysRoleMenuFunction>
    {
        public SysRoleMenuFunctionRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}