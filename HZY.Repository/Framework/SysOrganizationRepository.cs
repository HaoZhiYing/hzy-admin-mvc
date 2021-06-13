using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;

namespace HZY.Repository.Framework
{
    public class SysOrganizationRepository : AdminBaseRepository<SysOrganization>
    {
        public SysOrganizationRepository(AdminBaseDbContext context) : base(context)
        {

        }




    }
}
