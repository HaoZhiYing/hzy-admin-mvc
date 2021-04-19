using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HZY.Admin.Controllers
{
    [ApiExplorerSettings(IgnoreApi = true)]
    public class IndexController : Controller
    {
        [Route("")]
        public IActionResult Index()
        {
            return Redirect("/index.html");
        }
    }
}
