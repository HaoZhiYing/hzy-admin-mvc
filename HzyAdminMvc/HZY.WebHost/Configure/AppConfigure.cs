using HZY.EFCore;
using HZY.Infrastructure;
using HzyScanDiService;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;

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
        var env = app.Environment;
        var serviceProvider = app.Services;

        #region 使用 DbContext
        app.UseAdminDbContext();
        #endregion

        var appConfiguration = app.Services.GetRequiredService<AppConfiguration>();

        #region 注册服务提供者

        serviceProvider.UseServiceProvider();

        #endregion
    }


}
