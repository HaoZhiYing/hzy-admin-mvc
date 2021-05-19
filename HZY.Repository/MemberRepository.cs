using HZY.Repository.Domain.Framework;
using HZY.Repository.Domain;
using HZY.Repository.Core;
using HZY.Repository.Core.Provider;
using HZY.Repository.Core.EntityFramework;

namespace HZY.Repository
{
    public class MemberRepository : AppRepository<Member>
    {
        public MemberRepository(AppDbContext context) : base(context)
        {

        }
    }
}