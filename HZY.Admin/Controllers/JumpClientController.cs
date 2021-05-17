using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HZY.Admin.Controllers
{
    /// <summary>
    /// 跳转客户端
    /// </summary>
    [ApiExplorerSettings(IgnoreApi = true)]
    public class JumpClientController : Controller
    {
        [Route("")]
        public IActionResult Index()
        {
            return Redirect("/client/index.html");
        }
    }
}
