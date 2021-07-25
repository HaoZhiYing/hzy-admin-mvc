using HZY.EntityFrameworkCorePlus.DbContexts;
using HZY.EntityFrameworkCorePlus.Repositories;
using HZY.Model.Entities.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Repository.Framework
{
    /// <summary>
    /// 数据字典仓储
    /// </summary>
    public class SysDictionaryRepository : AdminBaseRepository<SysDictionary>
    {
        public SysDictionaryRepository(AdminBaseDbContext context) : base(context)
        {

        }
    }
}
