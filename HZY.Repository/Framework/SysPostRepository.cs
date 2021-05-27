using HZY.Repository.AppCore.DbContexts;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.Domain.Framework;

namespace HZY.Repository.Framework
{
    public class SysPostRepository : AdminBaseRepository<SysPost>
    {
        public SysPostRepository(AdminBaseDbContext context) : base(context)
        {

        }

    }
}
