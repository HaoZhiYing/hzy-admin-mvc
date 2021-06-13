using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysUserPostRepository : AdminBaseRepository<SysUserPost>
    {
        public SysUserPostRepository(AdminBaseDbContext context) : base(context)
        {

        }




    }
}
