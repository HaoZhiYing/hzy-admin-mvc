using HZY.Framework.Permission.Attributes;
using HZY.Services.Admin.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Controllers.Admin.Framework
{
    /// <summary>
    /// 操作日志控制器
    /// </summary>
    [ControllerDescriptor("d29fde94-0d6a-4a64-8446-55ee63df5885")]
    public class SysOperationLogController : AdminBaseController<SysOperationLogService>
    {
        public SysOperationLogController(SysOperationLogService defaultService) : base(defaultService)
        {

        }

    }
}
