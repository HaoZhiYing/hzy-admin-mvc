using System;
using System.Threading.Tasks;
using HZY.Admin.Services.Framework;
using HZY.Framework.Controllers;
using HZY.Framework.Permission.Attributes;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Admin.Controllers
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ControllerDescriptor]
    public class HomeController : AdminBaseController<SysMenuService>
    {
        private readonly AccountService _accountService;

        public HomeController(SysMenuService defaultService, AccountService accountService) : base(defaultService)
        {
            _accountService = accountService;
        }

        [HttpGet("/Home/Error")]
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            //return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
            return Content("程序异常，请查看错误日志!");
        }
    }
}