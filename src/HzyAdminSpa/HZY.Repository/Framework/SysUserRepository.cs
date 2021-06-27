using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysUserRepository : AdminBaseRepository<SysUser>
    {
        public SysUserRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}