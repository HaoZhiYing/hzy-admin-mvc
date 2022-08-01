using HZY.EFCore.CacheEntity;
using HZY.EFCore.CacheEntity.Impl;
using HZY.EFCore.DbContexts;
using HZY.EFCore.DbContexts.Interceptors;
using HZY.EFCore.Repositories;
using HZY.Infrastructure;
using HzyEFCoreRepositories;
using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace HZY.EFCore;

/// <summary>
/// 仓储模块
/// </summary>
public static class EFCoreModule
{
    /// <summary>
    /// 注册 Admin 后台管理数据库
    /// </summary>
    /// <param name="services"></param>
    /// <param name="connectionString">默认数据库连接字符串</param>
    /// <param name="defaultDatabaseType">默认数据库类型</param>
    public static void RegisterAdminRepository(IServiceCollection services, string connectionString, DefaultDatabaseType defaultDatabaseType)
    {
        #region 后台 管理系统 数据库上下文

        services.AddDbContextPool<AdminDbContext>(options =>
        {

            // sql 日志写入控制台
            //options.UseLoggerFactory(LoggerFactory.Create(builder => builder.AddConsole()));

            // 无跟踪
            // options.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking)
            // 懒加载代理
            options.UseLazyLoadingProxies();
            //添加 EFCore 监控 和 动态表名
            options.AddHzyEFCoreRepository(false);
            options.AddInterceptors(new AuditInterceptor());

            if (defaultDatabaseType == DefaultDatabaseType.SqlServer)
            {
                #region SqlSever
                options.UseSqlServer(connectionString, w => w.MinBatchSize(1).MaxBatchSize(100));
                #endregion
            }

            if (defaultDatabaseType == DefaultDatabaseType.MySql)
            {
                #region MySql
                options.UseMySql(connectionString, MySqlServerVersion.LatestSupportedServerVersion, w => w.MinBatchSize(1).MaxBatchSize(10000));
                #endregion
            }

            if (defaultDatabaseType == DefaultDatabaseType.PostgreSql)
            {
                #region Npgsql
                options.UseNpgsql(connectionString, w => w.MinBatchSize(1).MaxBatchSize(100));
                #endregion
            }

        }, 1000);

        #endregion

        services.AddSingleton<ICacheEntity, CacheEntityImpl>();
        services.AddTransient(typeof(AdminBaseRepository<>));
    }

    /// <summary>
    /// 使用 AdminDbContext
    /// </summary>
    /// <param name="app"></param>
    public static void UseAdminDbContext(this IApplicationBuilder app)
    {
        app.UseHzyEFCoreRepository(typeof(AdminDbContext));
    }



}
