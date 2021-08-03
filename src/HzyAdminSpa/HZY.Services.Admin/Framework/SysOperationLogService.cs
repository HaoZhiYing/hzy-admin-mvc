using HZY.Common;
using HZY.Framework.MessageQueue;
using HZY.Model.Entities.Framework;
using HZY.Repository.Framework;
using HZY.Services.Account;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Newtonsoft.Json;
using NPOI.XWPF.UserModel;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using UAParser;

namespace HZY.Services.Admin.Framework
{
    /// <summary>
    /// 操作日服务
    /// </summary>
    public class SysOperationLogService : AdminBaseService<SysOperationLogRepository>
    {
        private readonly HttpContext _httpContext;
        private readonly AccountService _accountService;
        private readonly IMessageQueueProvider _messageQueueProvider;

        public SysOperationLogService(SysOperationLogRepository repository,
            IHttpContextAccessor iHttpContextAccessor,
            AccountService accountService,
            IMessageQueueProvider messageQueueProvider) : base(repository)
        {
            this._httpContext = iHttpContextAccessor.HttpContext;
            _accountService = accountService;
            this._messageQueueProvider = messageQueueProvider;
        }


        /// <summary>
        /// 写入操作日志
        /// </summary>
        /// <returns></returns>
        public async Task WriteInLogAsync(long time, string bodyString)
        {
            var queryString = _httpContext.Request.QueryString.ToString();
            var apiUrl = _httpContext.Request.Path;
            //获取请求ip
            var ip = _httpContext.Request.Headers["X-Forwarded-For"].FirstOrDefault();
            if (string.IsNullOrEmpty(ip))
            {
                ip = _httpContext.Connection.RemoteIpAddress.MapToIPv4().ToString();
            }
            //
            var clientInfo = _httpContext.GetBrowserClientInfo();
            var browser = clientInfo?.UA.Family + clientInfo?.UA.Major;
            var os = clientInfo?.OS.Family + clientInfo?.OS.Major;

            //本机不记录
            // if (_IP == "::1") return;

            var formString = string.Empty;

            //form
            try
            {
                //读取 表单 信息
                var form = await _httpContext.Request.ReadFormAsync();
                if (form != null)
                {
                    var _Dictionary = new Dictionary<string, object>();
                    foreach (var key in form.Keys)
                    {
                        _Dictionary[key] = form[key];
                    }

                    formString = JsonConvert.SerializeObject(_Dictionary);
                }
            }
            catch (Exception) { }

            var userInfo = _accountService.GetAccountInfo();

            var sysOperationLog = new SysOperationLog
            {
                Api = apiUrl,
                Ip = ip,
                Form = formString,
                QueryString = queryString,
                FormBody = bodyString,
                UserId = userInfo?.Id,
                TakeUpTime = time,
                Browser = browser,
                OS = os,
            };

            await _messageQueueProvider.SendMessageQueueAsync("WriteInLogAsync", sysOperationLog, (value, serviceProvider) =>
            {
                using var scope = serviceProvider.CreateScope();
                var repository = scope.ServiceProvider.GetRequiredService<SysOperationLogRepository>();
                repository.InsertAsync((SysOperationLog)value).Wait();
            });
        }





    }
}
