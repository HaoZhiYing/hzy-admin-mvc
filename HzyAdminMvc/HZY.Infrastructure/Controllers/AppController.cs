using HZY.Infrastructure.Filters;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Infrastructure.Controllers;

public class AppController<TDefaultService> : AppController where TDefaultService : class
{
    /// <summary>
    /// 默认服务
    /// </summary>
    protected readonly TDefaultService DefaultService;

    public AppController(TDefaultService defaultService)
    {
        this.DefaultService = defaultService;
    }

}

/// <summary>
/// 控制器服务
/// </summary>
[ApiResultFilter]
//[ApiController]
[Route("api/[controller]")]
public class AppController : Controller
{


}