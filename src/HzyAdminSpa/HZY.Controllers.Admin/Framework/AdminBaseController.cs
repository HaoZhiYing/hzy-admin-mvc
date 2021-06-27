using HZY.Framework;
using HZY.Framework.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Controllers.Admin.Framework
{
    [Authorize]//是否授权 Authorize
    [ApiExplorerSettings(GroupName = nameof(ApiVersions.Admin_后台权限管理系统_Api))]
    [Route("api/admin/[controller]")]
    public class AdminBaseController<TDefaultService> : ApiBaseController<TDefaultService> where TDefaultService : class
    {
        public AdminBaseController(TDefaultService defaultService) : base(defaultService)
        {

        }
    }

    [Authorize]//是否授权 Authorize
    [ApiExplorerSettings(GroupName = nameof(ApiVersions.Admin_后台权限管理系统_Api))]
    [Route("api/admin/[controller]")]
    public class AdminBaseController : ApiBaseController
    {

    }


}
