using HZY.Repository.Domain.Framework;
using HZY.Repository.Core;
using HZY.Repository.Core.Provider;
using HZY.Repository.Core.EntityFramework;

namespace HZY.Repository.Framework
{
    public class SysRoleRepository : AppRepository<SysRole>
    {
        public SysRoleRepository(AppDbContext context) : base(context)
        {
        }
    }
}