using HZY.Framework;
using HZY.Framework.Controllers;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Controllers.Admin.Framework
{
    [ApiExplorerSettings(GroupName = nameof(ApiVersions.Admin_后台权限管理系统_Api))]
    [Route("api/admin/[controller]")]
    public class AdminBaseController<TDefaultService> : ApiBaseController<TDefaultService> where TDefaultService : class
    {
        public AdminBaseController(TDefaultService defaultService) : base(defaultService)
        {

        }
    }

    [ApiExplorerSettings(GroupName = nameof(ApiVersions.Admin_后台权限管理系统_Api))]
    [Route("api/admin/[controller]")]
    public class AdminBaseController : ApiBaseController
    {

    }


}
