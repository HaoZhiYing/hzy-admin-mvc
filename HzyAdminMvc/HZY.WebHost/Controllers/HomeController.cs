using HZY.Controllers.Admin.ControllersAdmin;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Services.Accounts;
using HZY.Services.Admin.Framework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading.Tasks;

namespace HZY.WebHost.Controllers;

[ControllerDescriptor]
public class HomeController : AdminBaseController<SysMenuService>
{
    private readonly IAccountService _accountService;

    public HomeController(SysMenuService defaultService, IAccountService accountService) : base(defaultService)
    {
        _accountService = accountService;
    }

    [HttpGet(nameof(Index)), Route(""), Route("/")]
    public async Task<IActionResult> Index()
    {
        var allList = await this.DefaultService.GetMenuByRoleIdAsync();

        ViewData["menuList"] = this.DefaultService.CreateMenus(Guid.Empty, allList);
        ViewData["UserName"] = this._accountService.GetAccountInfo().Name;

        return View();
    }

    [HttpGet(nameof(Main))]
    public IActionResult Main()
    {
        //Reids 使用例子
        //await this.redisService.AddOrUpdateByKeyAsync("mykey", "123");

        return View();
    }

    [HttpGet("/Home/Error")]
    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        //return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        return Content("程序异常，请查看错误日志!");
    }


    /// <summary>
    /// 获取 路由
    /// </summary>
    /// <returns></returns>
    [HttpGet("Routers.json")]
    public async Task<List<Dictionary<string, object>>> GetRouters()
    {
        var allList = await this.DefaultService.GetMenuByRoleIdAsync();
        return this.DefaultService.CreateRouters(allList);
    }

}
