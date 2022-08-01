using HZY.FreeSqlCore;
using HZY.EFCore;
using HZY.Infrastructure;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HzyScanDiService;
using Microsoft.AspNetCore.Builder;

namespace HZY.WebHost.Configure;

public class AppConfigureServices
{
    private static readonly IEnumerable<string> _versionList = typeof(ApiVersions).GetEnumNames().OrderBy(w => w);
    public static readonly string prefixString = "HZY.";

    /// <summary>
    /// 获取 Swagger 版本集合
    /// </summary>
    /// <returns></returns>
    public static IEnumerable<string> GetVersionList() => _versionList;

    /// <summary>
    /// 配置服务
    /// </summary>
    /// <param name="services"></param>
    /// <param name="configuration"></param>
    public static void Build(WebApplicationBuilder builder)
    {
        var services = builder.Services;
        var configuration = builder.Configuration;

        var appConfiguration = new AppConfiguration(configuration);
        var prefixString = appConfiguration.Configs.Namespace + ".";

        //扫描服务
        services.AddHzyScanDiService(prefixString);

        #region 取消默认验证Api 接收参数模型 的 验证特性 如有 [ApiController]

        services.Configure<ApiBehaviorOptions>(options => { options.SuppressModelStateInvalidFilter = true; });

        #endregion

        #region HttpContext、IMemoryCache

        //扫描服务自动化注册
        services.AddHzyScanDiService(prefixString);
        services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
        services.AddMemoryCache();

        #endregion

        #region 数据库仓储注册 、 自动扫描服务注册 、 中间件注册
        //配置efcore
        EFCoreModule.RegisterAdminRepository(services, appConfiguration.ConnectionStrings.DefaultSqlServer, DefaultDatabaseType.SqlServer);
        //配置freesql
        FreeSqlCoreModule.RegisterFreeSql(services, appConfiguration.ConnectionStrings.DefaultSqlServer, DefaultDatabaseType.SqlServer, $"{prefixString}Repositories");
        //配置redis
        //RepositoryRedisModule.RegisterRedisRepository(services, connectionStringRedis);
        //添加中间件
        //services.AddScoped<TakeUpTimeMiddleware>();

        #endregion

        #region 跨域配置 配置跨域处理

        services.AddCors(options =>
        {
            options.AddPolicy("WebHostCors", builder =>
            {
                builder.WithOrigins("*")
                    .AllowAnyMethod()
                    .AllowAnyHeader();
                //.AllowAnyOrigin()
                //.AllowCredentials();
                //6877
            });
        });

        #endregion

        #region 自定义视图

        //自定义 视图 
        services.Configure<Microsoft.AspNetCore.Mvc.Razor.RazorViewEngineOptions>(item =>
        {
            //系统管理
            item.ViewLocationFormats.Add("/Views/Sys/{1}/{0}.cshtml");
            //基础管理
            item.ViewLocationFormats.Add("/Views/Framework/{1}/{0}.cshtml");
        });

        #endregion

     

    }



}
