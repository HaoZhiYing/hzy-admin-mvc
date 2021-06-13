using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysRoleRepository : AdminBaseRepository<SysRole>
    {
        public SysRoleRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}