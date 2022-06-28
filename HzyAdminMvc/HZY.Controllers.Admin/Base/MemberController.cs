using HZY.Services.Admin;
using HZY.Controllers.Admin.ControllersAdmin;
using HZY.Infrastructure;
using HZY.Infrastructure.Filters;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.DTO;
using HZY.Models.Entities;
using Microsoft.AspNetCore.Mvc;
using HZY.EFCore.PagingViews;

namespace HZY.Controllers.Admin.Base;

[ControllerDescriptor("7C34C2FD-98ED-4655-AA04-BB00B915A751")]
public class MemberController : AdminBaseController<MemberService>
{
    public MemberController(MemberService defaultService) : base(defaultService)
    {

    }

    /// <summary>
    /// 列表页
    /// </summary>
    /// <returns></returns>
    [HttpGet(nameof(Index))]
    public IActionResult Index()
    {
        return View();
    }

    /// <summary>
    /// 编辑页
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    [HttpGet("Info/{id?}")]
    public IActionResult Info(Guid id)
    {
        return View(id);
    }

    /// <summary>
    /// 获取列表
    /// </summary>
    /// <param name="rows"></param>
    /// <param name="page"></param>
    /// <param name="search"></param>
    /// <returns></returns>
    [ApiResourceCacheFilter(1)]
    [ActionDescriptor("Have")]
    [HttpPost("FindList/{rows}/{page}")]
    public async Task<PagingView> FindListAsync([FromRoute] int rows, [FromRoute] int page, [FromBody] Member search)
    {
        return await this.DefaultService.FindListAsync(page, rows, search);
    }

    /// <summary>
    /// 根据id数组删除
    /// </summary>
    /// <param name="ids"></param>
    /// <returns></returns>
    [ActionDescriptor("Delete")]
    [HttpPost("DeleteList")]
    public async Task<bool> DeleteListAsync([FromBody] List<Guid> ids)
    {
        await this.DefaultService.DeleteListAsync(ids);
        return true;
    }

    /// <summary>
    /// 查询表单数据
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    [ActionDescriptor("Have")]
    [HttpGet("FindForm/{id?}")]
    public async Task<Dictionary<string, object>> FindFormAsync([FromRoute] Guid id)
    {
        return await this.DefaultService.FindFormAsync(id);
    }

    /// <summary>
    /// 保存
    /// </summary>
    /// <param name="form"></param>
    /// <returns></returns>
    [ActionDescriptor("Save")]
    [ApiCheckModel]
    [HttpPost("SaveForm")]
    public async Task<Member> SaveFormAsync([FromForm] Member form)
    {
        return await this.DefaultService.SaveFormAsync(form, Request.Form.Files);
    }

    /// <summary>
    /// 导出Excel
    /// </summary>
    /// <param name="search"></param>
    /// <returns></returns>
    [ApiResourceCacheFilter(5)]
    [ActionDescriptor("GetExcel")]
    [HttpPost("ExportExcel")]
    public async Task<FileContentResult> ExportExcelAsync([FromBody] Member search)
        => this.File(await this.DefaultService.ExportExcelAsync(search), Tools.GetFileContentType[".xls"].ToStr(),
            $"{Guid.NewGuid()}.xls");
}