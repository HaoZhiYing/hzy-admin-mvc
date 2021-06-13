using HZY.Repository.AppCore.Provider;
using HZY.Repository.DbContexts;
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