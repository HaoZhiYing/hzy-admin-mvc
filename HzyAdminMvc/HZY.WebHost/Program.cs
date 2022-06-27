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

//��ַ
//builder.WebHost.UseUrls("http://*:5555", "http://localhost:5555");
//builder.WebHost.UseUrls("http://*:5555");

//ʹ�� Nlog
builder.WebHost.UseNLog();

//����NLog
NLogUtil.Init(logger);
logger.Debug("��ʼ�� Main !");

builder.Services.AddRazorPages();

// Add services to the container.
builder.Services.AddControllersWithViews(options =>
{
    options.Filters.Add<ApiExceptionFilter>();
    options.Filters.Add<AdminAuthorizationActionFilter>();
})
.AddJsonOptions(options =>
{
    //���� ����� Dictionary ��ô �� json ���л� �� key ���ַ� ���� С�շ� ����
    options.JsonSerializerOptions.DictionaryKeyPolicy = JsonNamingPolicy.CamelCase;
    options.JsonSerializerOptions.Converters.Add(new DateTimeJsonConverter());
    options.JsonSerializerOptions.Converters.Add(new DateTimeNullJsonConverter());
})
.AddRazorRuntimeCompilation()
.AddControllersAsServices()
;

//���񹹽�
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

//���ù���
AppConfigure.Build(app);

app.Run();