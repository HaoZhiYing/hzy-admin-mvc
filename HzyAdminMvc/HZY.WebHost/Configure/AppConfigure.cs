using HZY.Infrastructure;
using HZY.Infrastructure.MessageQueue;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using System;

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
    public static void Build(IApplicationBuilder app, IWebHostEnvironment env, IServiceProvider serviceProvider, IMessageQueueProvider messageQueueProvider)
    {

    }


}
