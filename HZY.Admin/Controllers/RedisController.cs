using HZY.Framework.Controllers;
using HZY.Framework.Filters;
using HZY.Repository.Redis;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HZY.Admin.Controllers
{
    [ApiResultFilter]
    [Route("api/[controller]")]
    public class RedisController : FrameworkBaseController
    {
        private readonly RedisRepository _redisRepository;

        //public RedisController(RedisRepository redisRepository)
        //{
        //    _redisRepository = redisRepository;
        //}

        /// <summary>
        /// 测试 消息订阅
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        [HttpGet("{key}")]
        public string Test(string key)
        {
            _redisRepository.Listener(key);
            return "调用成功!";
        }









    }
}
