using System;
using HzyScanDiService;
using Microsoft.Extensions.Configuration;

namespace HZY.Infrastructure;

/// <summary>
/// 程序配置信息映射类 appsettings.json
/// </summary>
public class AppConfiguration : ISingletonSelfDependency
{
    /// <summary>
    /// IConfiguration 通过属性注入
    /// </summary>
    [Autowired]
    public virtual IConfiguration _configuration { get; }

    /// <summary>
    /// 程序默认配置项 通过属性注入
    /// </summary>
    [AppSettings(nameof(AppConfigurationOptions))]
    public virtual AppConfigurationOptions Configs { get; }

    /// <summary>
    /// 程序配置信息映射类
    /// </summary>
    public AppConfiguration()
    {

    }

    /// <summary>
    /// 程序配置信息映射类
    /// </summary>
    /// <param name="configuration"></param>
    public AppConfiguration(IConfiguration configuration)
    {
        this._configuration = configuration;
        Configs = _configuration.GetSection(nameof(AppConfigurationOptions)).Get<AppConfigurationOptions>();

    }

   
}

/// <summary>
/// AppConfigurationOptions
/// </summary>
public class AppConfigurationOptions
{
    public string AppTitle { get; set; }
    public string JwtKeyName { get; set; }
    public string JwtSecurityKey { get; set; }
    public Guid AdminRoleId { get; set; }
    public Guid SysMenuId { get; set; }
    public string AuthorizationKeyName { get; set; }
}