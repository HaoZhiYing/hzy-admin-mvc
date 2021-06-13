﻿using HZY.Framework;
using HZY.Framework.Controllers;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Controllers.App
{
    [ApiExplorerSettings(GroupName = nameof(ApiVersions.App))]
    [Route("api/app[controller]")]
    public class AppBaseController<TDefaultService> : ApiBaseController<TDefaultService> where TDefaultService : class
    {
        public AppBaseController(TDefaultService defaultService) : base(defaultService)
        {

        }
    }

    [ApiExplorerSettings(GroupName = nameof(ApiVersions.App))]
    [Route("api/app/[controller]")]
    public class AppBaseController : ApiBaseController
    {

    }


}
