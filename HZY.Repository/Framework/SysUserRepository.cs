using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    /// <summary>
    /// 
    /// </summary>
    public class SysUserRepository : AdminBaseRepository<SysUser>
    {
        public SysUserRepository(AdminBaseDbContext context) : base(context)
        {
        }
    }
}