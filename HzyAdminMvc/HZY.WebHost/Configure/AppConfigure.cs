using HZY.EFCore;
using Microsoft.AspNetCore.Builder;

namespace HZY.WebHost.Configure;

public class AppConfigure
{
    /// <summary>
    /// 配置构建
    /// </summary>
    /// <param name="app"></param>
    public static void Build(WebApplication app)
    {
        #region 使用 DbContext
        EFCoreModule.UseDbContext(app.Services);
        #endregion
    }


}
