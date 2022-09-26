using HZY.Managers.Upload;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace HZY.WebHost.Controllers;

/// <summary>
/// 上传文件控制器
/// </summary>
[Route("api/[controller]")]
public class UploadController : ControllerBase
{
    private readonly IUploadService _uploadService;

    public UploadController(IUploadService uploadService)
    {
        _uploadService = uploadService;
    }

    /// <summary>
    /// 上传图片
    /// </summary>
    /// <returns></returns>
    [Route("Images")]
    [HttpPost]
    public JsonResult Images()
    {
        var files = Request.Form.Files.Where(w => w.Name.Contains("Images")).ToList();
        var paths = files.Select(item => _uploadService.HandleUploadFile(item)).ToList();

        return new JsonResult(new
        {
            errno = 0,
            data = paths
        });
    }
}