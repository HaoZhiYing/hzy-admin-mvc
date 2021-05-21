using HZY.Repository.AppCore.DbContexts;
using HZY.Repository.AppCore.Impl;
using HZY.Repository.AppCore.Interface;
using HZY.Repository.AppCore.Provider;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

namespace HZY.Repository.Core
{
    public class RepositoryModule
    {

        public static void RegisterAdminRepository(IServiceCollection services, string connectionString)
        {
            services.AddDbContext<AdminDbContext>(options =>
            {
                options
                    .UseSqlServer(connectionString, w => w.MinBatchSize(1).MaxBatchSize(100))
                    .UseLoggerFactory(LoggerFactory.Create(builder => builder.AddConsole()));
                //无跟踪
                // options.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);
            });

            services.AddSingleton<ICacheEntity, CacheEntityImpl>();
            services.AddScoped(typeof(AdminRepository<>));
        }




    }
}
