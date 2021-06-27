using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysUserRoleRepository : AdminBaseRepository<SysUserRole>
    {
        public SysUserRoleRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}