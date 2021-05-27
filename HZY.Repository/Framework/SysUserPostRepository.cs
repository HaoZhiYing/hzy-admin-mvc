using HZY.Repository.AppCore.DbContexts;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.Domain.Framework;

namespace HZY.Repository.Framework
{
    public class SysUserPostRepository : AdminBaseRepository<SysUserPost>
    {
        public SysUserPostRepository(AdminBaseDbContext context) : base(context)
        {

        }




    }
}
