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
    /// 操作日志 仓储
    /// </summary>
    public class SysOperationLogRepository : AdminBaseRepository<SysOperationLog>
    {
        public SysOperationLogRepository(AdminBaseDbContext context) : base(context)
        {

        }





    }
}
