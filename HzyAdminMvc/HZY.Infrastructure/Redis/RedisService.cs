using StackExchange.Redis;

namespace HZY.Infrastructure.Redis;

/// <summary>
/// Redis 服务类
/// </summary>
public class RedisService : IRedisService
{
    /// <summary>
    /// get database
    /// </summary>
    public IDatabase Database { get; }
    public IConnectionMultiplexer Multiplexer { get; }

    private readonly ConnectionMultiplexer _connectionMultiplexer;

    public RedisService(string connectionString)
    {
        _connectionMultiplexer = ConnectionMultiplexer.Connect(connectionString);
        Database = _connectionMultiplexer.GetDatabase();
        Multiplexer = Database.Multiplexer;
    }

    public void Dispose()
    {
        if (_connectionMultiplexer == null) return;
        _connectionMultiplexer.Close();
        _connectionMultiplexer.Dispose();
    }
}