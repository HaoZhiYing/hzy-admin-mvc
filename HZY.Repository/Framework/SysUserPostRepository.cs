using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysUserPostRepository : AdminBaseRepository<SysUserPost>
    {
        public SysUserPostRepository(AdminBaseDbContext context) : base(context)
        {

        }




    }
}
