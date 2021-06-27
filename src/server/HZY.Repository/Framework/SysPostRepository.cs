using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysPostRepository : AdminBaseRepository<SysPost>
    {
        public SysPostRepository(AdminBaseDbContext context) : base(context)
        {

        }

    }
}
