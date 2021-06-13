using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities;

namespace HZY.Repository
{
    public class MemberRepository : AdminBaseRepository<Member>
    {
        public MemberRepository(AdminBaseDbContext context) : base(context)
        {

        }
    }
}