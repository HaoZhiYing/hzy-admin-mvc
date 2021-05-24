using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using HZY.Admin.Filters;
using HZY.Framework;
using HZY.Framework.Filters;
using HZY.Framework.Middleware;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.Filters;
using HZY.Common.ScanDIService;
using HZY.Repository.Redis.AppCore;
using HZY.Repository.AppCore;

namespace HZY.Admin
{
    public class Startup
    {

        private readonly IEnumerable<string> _versionList = typeof(ApiVersions).GetEnumNames().OrderBy(w => w);

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        private IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            var jwtKeyName = Configuration["AppConfiguration:JwtKeyName"];
            var jwtSecurityKey = Configuration["AppConfiguration:JwtSecurityKey"];
            var connectionString = Configuration["AppConfiguration:AdminConnectionString"];
            var connectionStringRedis = Configuration["AppConfiguration:ConnectionStringRedis"];

            services.AddControllers(options =>
                {
                    options.Filters.Add<ApiExceptionFilter>();
                    options.Filters.Add<AdminAuthorizationActionFilter>();
                })
                .AddJsonOptions(options =>
                {
                    //设置 如果是 Dictionary 那么 在 json 序列化 是 key 的字符 采用 小驼峰 命名
                    options.JsonSerializerOptions.DictionaryKeyPolicy = JsonNamingPolicy.CamelCase;
                })
                ;

            #region 取消默认验证Api 接收参数模型 的 验证特性 如有 [ApiController]

            services.Configure<ApiBehaviorOptions>(options => { options.SuppressModelStateInvalidFilter = true; });

            #endregion

            #region HttpContext、IMemoryCache

            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddMemoryCache();

            #endregion

            #region 仓储注册 、 自动扫描服务注册 、 中间件注册

            RepositoryModule.RegisterAdminRepository(services, connectionString, DefaultDatabaseType.PostgreSql);
            //RepositoryRedisModule.RegisterRedisRepository(services, connectionStringRedis);
            services.ScanningAppServices("HZY.");
            services.AddScoped<TakeUpTimeMiddleware>();

            #endregion

            #region 跨域配置 配置跨域处理

            services.AddCors(options =>
            {
                options.AddPolicy("HZYCors", builder =>
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

            #region JWT

            services.AddAuthentication(Microsoft.AspNetCore.Authentication.JwtBearer.JwtBearerDefaults
                    .AuthenticationScheme)
                .AddJwtBearer(options =>
                {
                    options.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidateIssuer = true, //是否验证Issuer
                        ValidateAudience = true, //是否验证Audience
                        ValidateLifetime = true, //是否验证失效时间
                        ValidateIssuerSigningKey = true, //是否验证SecurityKey
                        ValidAudience = jwtKeyName, //Audience
                        ValidIssuer = jwtKeyName, //Issuer，这两项和前面签发jwt的设置一致
                        IssuerSigningKey =
                            new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtSecurityKey)) //拿到SecurityKey
                    };
                });

            #endregion

            #region Swagger 注册Swagger生成器，定义一个和多个Swagger 文档

            services.AddSwaggerGen(options =>
            {
                foreach (var item in _versionList)
                {
                    options.SwaggerDoc(item, new OpenApiInfo
                    {
                        Title = item
                    });
                }

                //为 Swagger JSON and UI设置xml文档注释路径
                var xmlPath = Path.Combine(System.AppContext.BaseDirectory, "HZY.Admin.xml");
                var xmlPath1 = Path.Combine(System.AppContext.BaseDirectory, "HZY.Repository.xml");
                options.IncludeXmlComments(xmlPath, true);
                options.IncludeXmlComments(xmlPath1, true);

                #region Jwt token 配置

                //option.OperationFilter<AppService.SwaggerParameterFilter>(); // 给每个接口配置授权码传入参数文本框
                //
                options.OperationFilter<AddResponseHeadersFilter>();
                options.OperationFilter<AppendAuthorizeToSummaryOperationFilter>();
                //很重要！这里配置安全校验，和之前的版本不一样
                options.OperationFilter<SecurityRequirementsOperationFilter>();
                //开启 oauth2 安全描述
                options.AddSecurityDefinition("oauth2", new OpenApiSecurityScheme
                {
                    Description = "JWT授权(数据将在请求头中进行传输) 直接在下框中输入Bearer {token}（注意两者之间是一个空格）\"",
                    In = ParameterLocation.Header,
                    Name = "Authorization",
                    Type = SecuritySchemeType.ApiKey,
                    //Scheme = "basic",
                });

                #endregion
            });

            #endregion

            #region 设置 Vue 单页面 地址
            //services.AddSpaStaticFiles(opt => opt.RootPath = "ClientApp/dist");
            #endregion

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
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

            #region JWT

            app.UseAuthentication();
            app.UseAuthorization();

            #endregion

            #region Swagger

            //启用中间件服务生成Swagger作为JSON终结点
            app.UseSwagger();
            //启用中间件服务对swagger-ui，指定Swagger JSON终结点
            app.UseSwaggerUI(option =>
            {
                foreach (var item in _versionList) option.SwaggerEndpoint($"{item}/swagger.json", item);
                option.RoutePrefix = "swagger";
            });

            #endregion

            #region 使用跨域 警告: 通过终结点路由，CORS 中间件必须配置为在对UseRouting和UseEndpoints的调用之间执行。 配置不正确将导致中间件停止正常运行。

            app.UseCors("HZYCors");

            #endregion

            #region 使用 Api 耗时计算中间件
            app.UseMiddleware<TakeUpTimeMiddleware>();
            #endregion

            app.UseEndpoints(endpoints => endpoints.MapControllers());


        }
    }
}