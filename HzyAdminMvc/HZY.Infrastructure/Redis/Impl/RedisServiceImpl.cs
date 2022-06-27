using HZY.Infrastructure.Redis;
using StackExchange.Redis;

namespace HZY.Infrastructure.Redis.Impl
{
    public class RedisServiceImpl : IRedisService
    {
        /// <summary>
        /// get database
        /// </summary>
        public IDatabase Database { get; }
        public IConnectionMultiplexer Multiplexer { get; }

        public RedisServiceImpl(string connectionString)
        {
            Multiplexer = ConnectionMultiplexer.Connect(connectionString);
            Database = Multiplexer.GetDatabase();
        }

        public void Dispose()
        {
            if (Multiplexer == null) return;
            Multiplexer.Close();
            Multiplexer.Dispose();
        }



    }
}
