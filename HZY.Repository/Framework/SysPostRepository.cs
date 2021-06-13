using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysPostRepository : AdminBaseRepository<SysPost>
    {
        public SysPostRepository(AdminBaseDbContext context) : base(context)
        {

        }

    }
}
