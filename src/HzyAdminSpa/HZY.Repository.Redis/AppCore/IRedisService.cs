using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.Text;

namespace HZY.Repository.Redis.AppCore
{
    public interface IRedisService : IDisposable
    {
        IDatabase Database { get; }
        IConnectionMultiplexer Multiplexer { get; }




    }
}
