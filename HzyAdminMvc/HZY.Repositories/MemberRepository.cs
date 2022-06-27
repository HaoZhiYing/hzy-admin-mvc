using HZY.EFCore.DbContexts;
using HZY.EFCore.Repositories;
using HZY.Models.Entities;
using HZY.Models.Entities.Framework;

namespace HZY.Repositories;

public class MemberRepository : AdminBaseRepository<Member>
{
    public MemberRepository(AdminDbContext context) : base(context)
    {

    }
}