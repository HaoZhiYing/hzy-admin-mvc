using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysRoleRepository : AdminBaseRepository<SysRole>
    {
        public SysRoleRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}