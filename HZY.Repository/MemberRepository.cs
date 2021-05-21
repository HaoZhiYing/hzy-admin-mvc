using HZY.Repository.Domain;
using HZY.Repository.AppCore.Provider;
using HZY.Repository.AppCore.DbContexts;

namespace HZY.Repository
{
    public class MemberRepository : AdminRepository<Member>
    {
        public MemberRepository(AdminDbContext context) : base(context)
        {

        }
    }
}