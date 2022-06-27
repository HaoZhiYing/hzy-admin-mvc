using HZY.EFCore;
using Microsoft.AspNetCore.Builder;

namespace HZY.WebHost.Configure;

public class AppConfigure
{
    /// <summary>
    /// 配置构建
    /// </summary>
    /// <param name="app"></param>
    /// <param name="env"></param>
    /// <param name="serviceProvider"></param>
    /// <param name="messageQueueProvider"></param>
    public static void Build(WebApplication app)
    {
        #region 使用 DbContext
        EFCoreModule.UseAdminDbContext(app.Services);
        #endregion
    }


}
