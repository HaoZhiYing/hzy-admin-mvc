using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysMenuFunctionRepository : AdminBaseRepository<SysMenuFunction>
    {
        public SysMenuFunctionRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}