using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysUserRoleRepository : AdminBaseRepository<SysUserRole>
    {
        public SysUserRoleRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}