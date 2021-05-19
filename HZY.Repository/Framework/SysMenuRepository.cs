using HZY.Repository.Domain.Framework;
using HZY.Repository.Core;
using HZY.Repository.Core.Provider;
using HZY.Repository.Core.EntityFramework;

namespace HZY.Repository.Framework
{
    public class SysMenuRepository : AppRepository<SysMenu>
    {
        public SysMenuRepository(AppDbContext context) : base(context)
        {
        }
    }
}