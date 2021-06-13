using HZY.Model.Entities.Framework;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;

namespace HZY.Repository.Framework
{
    public class SysOrganizationRepository : AdminBaseRepository<SysOrganization>
    {
        public SysOrganizationRepository(AdminBaseDbContext context) : base(context)
        {

        }




    }
}
