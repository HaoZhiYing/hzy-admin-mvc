using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Controllers.App
{
    /// <summary>
    /// App 接口测试
    /// </summary>
    public class AppTestController : AppBaseController
    {
        [HttpGet]
        public string Get()
        {
            return "App 接口 测试通过!";
        }

    }
}
