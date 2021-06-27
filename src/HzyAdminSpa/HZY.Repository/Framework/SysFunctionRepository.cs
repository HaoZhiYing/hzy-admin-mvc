using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysFunctionRepository : AdminBaseRepository<SysFunction>
    {
        public SysFunctionRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}