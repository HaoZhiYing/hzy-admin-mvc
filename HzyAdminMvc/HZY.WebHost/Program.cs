using HZY.Infrastructure.ApiResultManage;
using HZY.Infrastructure.Filters;
using HZY.Infrastructure.MessageQueue;
using HZY.Infrastructure.NLogService;
using HZY.Infrastructure.TextJson;
using HZY.WebHost.Configure;
using HZY.WebHost.Filters;
using HzyScanDiService;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using NLog.Web;
using System;
using System.Text.Json;

var logger = NLogBuilder.ConfigureNLog("nlog.config").GetCurrentClassLogger();

var builder = WebApplication.CreateBuilder(args);

//地址
//builder.WebHost.UseUrls("http://*:5555", "http://localhost:5555");
//builder.WebHost.UseUrls("http://*:5555");

//使用 Nlog
builder.WebHost.UseNLog();

//设置NLog
NLogUtil.Init(logger);
logger.Debug("初始化 Main !");

builder.Services.AddRazorPages();

// Add services to the container.
builder.Services.AddControllersWithViews(options =>
{
    options.Filters.Add<ApiExceptionFilter>();
    options.Filters.Add<AdminAuthorizationActionFilter>();
})
.AddJsonOptions(options =>
{
    //设置 如果是 Dictionary 那么 在 json 序列化 是 key 的字符 采用 小驼峰 命名
    options.JsonSerializerOptions.DictionaryKeyPolicy = JsonNamingPolicy.CamelCase;
    options.JsonSerializerOptions.Converters.Add(new DateTimeJsonConverter());
    options.JsonSerializerOptions.Converters.Add(new DateTimeNullJsonConverter());
})
.AddRazorRuntimeCompilation()
.AddControllersAsServices()
;

//服务构建
AppConfigureServices.Build(builder);

var app = builder.Build();

var messageQueueProvider = app.Services.GetRequiredService<IMessageQueueProvider>();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

//app.UseAuthorization();
app.MapRazorPages();
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

//配置构建
AppConfigure.Build(app);

app.Run();