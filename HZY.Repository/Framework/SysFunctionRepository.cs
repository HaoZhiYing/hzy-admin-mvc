using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysFunctionRepository : AdminBaseRepository<SysFunction>
    {
        public SysFunctionRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}