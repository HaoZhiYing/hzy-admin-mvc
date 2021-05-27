using HZY.Repository.AppCore.DbContexts;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.Domain.Framework;

namespace HZY.Repository.Framework
{
    public class SysOrganizationRepository : AdminBaseRepository<SysOrganization>
    {
        public SysOrganizationRepository(AdminBaseDbContext context) : base(context)
        {

        }


    }
}
