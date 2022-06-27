/*
 * *******************************************************
 *
 * 作者：hzy
 *
 * 开源地址：https://gitee.com/hzy6
 *
 * *******************************************************
 */

using System.Linq;
using HZY.EFCore.CacheEntity;
using HZY.Models.Entities;
using HZY.Models.Entities.BaseEntitys;
using HZY.Models.Entities.Framework;
using HzyEFCoreRepositories.DbContexts;
using HzyEFCoreRepositories.Extensions;
using HzyScanDiService;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace HZY.EFCore.DbContexts;

/// <summary>
/// 后台权限管理系统 DbContext
/// </summary>
public class AdminDbContext : DbContextBase
{
    public AdminDbContext(DbContextOptions<AdminDbContext> options) : base(options)
    {

    }

    #region DbSet

    #region 后台系统 基础
    public DbSet<SysFunction> SysFunction { get; set; }
    public DbSet<SysMenu> SysMenu { get; set; }
    public DbSet<SysMenuFunction> SysMenuFunction { get; set; }
    public DbSet<SysRole> SysRole { get; set; }
    public DbSet<SysRoleMenuFunction> SysRoleMenuFunction { get; set; }
    public DbSet<SysUser> SysUser { get; set; }
    public DbSet<SysUserRole> SysUserRole { get; set; }
    #endregion

    #region 业务

    public DbSet<Member> Member { get; set; }

    #endregion

    #endregion

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        //扫描表 并 缓存 属性 xml 信息
        using var scope = IOCUtil.CreateScope();
        var _cacheEntity = scope.ServiceProvider.GetService<ICacheEntity>();
        if (_cacheEntity != null)
        {
            _cacheEntity.Set(modelBuilder.Model.GetEntityTypes().Select(item => item.ClrType));
        }

        #region 过滤软删除

        foreach (var entityType in modelBuilder.Model
            .GetEntityTypes()
            .Where(w => typeof(IDeleteBaseEntity).IsAssignableFrom(w.ClrType)))
        {
            var lambda = ExpressionTreeExtensions.Equal(entityType.ClrType, nameof(IDeleteBaseEntity.IsDeleted), false);
            modelBuilder.Entity(entityType.ClrType).HasQueryFilter(lambda);
        }

        #endregion
    }


}