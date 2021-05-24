using HZY.Repository.AppCore.DbContexts;
using HZY.Repository.AppCore.Impl;
using HZY.Repository.AppCore.Interface;
using HZY.Repository.AppCore.Provider;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

namespace HZY.Repository.AppCore
{
    public class RepositoryModule
    {

        public static void RegisterAdminRepository(IServiceCollection services, string connectionString, DefaultDatabaseType defaultDatabaseType)
        {
            #region 后台 管理系统 数据库上下文

            services.AddDbContext<AdminBaseDbContext>(options =>
            {

                options.UseLoggerFactory(LoggerFactory.Create(builder => builder.AddConsole()));
                //无跟踪
                // .UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking)

                if (defaultDatabaseType == DefaultDatabaseType.SqlServer)
                {
                    #region SqlSever
                    options.UseSqlServer(connectionString, w => w.MinBatchSize(1).MaxBatchSize(100));
                    #endregion
                }

                if (defaultDatabaseType == DefaultDatabaseType.MySql)
                {
                    #region MySql
                    options.UseMySql(connectionString, MySqlServerVersion.LatestSupportedServerVersion, w => w.MinBatchSize(1).MaxBatchSize(100));
                    #endregion
                }

                if (defaultDatabaseType == DefaultDatabaseType.PostgreSql)
                {
                    #region Npgsql
                    options.UseNpgsql(connectionString, w => w.MinBatchSize(1).MaxBatchSize(100));
                    #endregion
                }

            });

            #endregion

            services.AddSingleton<ICacheEntity, CacheEntityImpl>();
            services.AddScoped(typeof(AdminBaseRepository<>));
        }




    }

    /// <summary>
    /// 默认数据库类型
    /// </summary>
    public enum DefaultDatabaseType
    {
        SqlServer,
        MySql,
        PostgreSql
    }

}
