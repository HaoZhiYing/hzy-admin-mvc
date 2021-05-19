using HZY.Repository.Domain.Framework;
using HZY.Repository.Core;
using HZY.Repository.Core.Provider;
using HZY.Repository.Core.EntityFramework;

namespace HZY.Repository.Framework
{
    public class SysMenuFunctionRepository : AppRepository<SysMenuFunction>
    {
        public SysMenuFunctionRepository(AppDbContext context) : base(context)
        {
        }
    }
}