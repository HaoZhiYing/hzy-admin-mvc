using System;
using System.Collections.Generic;
using HZY.Common;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using HZY.Framework.ApiResultManage;
using NLog.Web;

namespace HZY.WebHost
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var logger = NLogBuilder.ConfigureNLog("nlog.config").GetCurrentClassLogger();
            try
            {
                var host = CreateHostBuilder(args).Build();

                //设置NLog
                LogUtil.Init(logger);
                logger.Debug("初始化 Main !");
                host.Run();
            }
            catch (Exception exception)
            {
                if (!(exception is MessageBox))
                {
                    //NLog: catch setup errors
                    logger.Error(exception, "由于异常而停止程序!");
                    throw;
                }
            }
            finally
            {
                // Ensure to flush and stop internal timers/threads before application-exit (Avoid segmentation fault on Linux)
                NLog.LogManager.Shutdown();
            }
        }

        private static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder => webBuilder.UseStartup<Startup>())
                .ConfigureLogging(logging =>
                {
                    logging.ClearProviders();
                    logging.SetMinimumLevel(LogLevel.Trace);
                })
                .UseNLog()  // NLog: Setup NLog for Dependency injection
            ;
    }
}