using HZY.Infrastructure.Token;
using HZY.Models.Entities.BaseEntitys;
using HzyScanDiService;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using Microsoft.EntityFrameworkCore.Diagnostics;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace HZY.EFCore.DbContexts.Interceptors
{
    /// <summary>
    /// 审计拦截器
    /// </summary>
    public class AuditInterceptor : SaveChangesInterceptor
    {
        /// <summary>
        /// 保存前 触发
        /// </summary>
        /// <param name="eventData"></param>
        /// <param name="result"></param>
        /// <returns></returns>
        public override InterceptionResult<int> SavingChanges(DbContextEventData eventData, InterceptionResult<int> result)
        {
            var userId = Guid.Empty;

            using var scope = IOCUtil.CreateScope();
            var _tokenService = scope.ServiceProvider.GetService<TokenService>();
            userId = _tokenService.GetAccountIdByToken();

            var entries = eventData.Context.ChangeTracker.Entries();
            var entityEntries = entries as EntityEntry[] ?? entries.ToArray();

            #region 处理 DefaultBaseEntity

            //Update
            var updateEntries_BaseModel = entityEntries
                .Where(w => w.Entity is DefaultBaseEntity && w.State == EntityState.Modified) // || w.State == EntityState.Unchanged
                .Select(item => (DefaultBaseEntity)item.Entity)
                .ToList();
            updateEntries_BaseModel.ForEach(w => w.UpdateTime = DateTime.Now);

            //Insert
            var insertEntries_BaseModel = entityEntries
                .Where(w => w.Entity is DefaultBaseEntity && w.State == EntityState.Added)
                .Select(item => (DefaultBaseEntity)item.Entity)
                .ToList();
            foreach (var entity in insertEntries_BaseModel)
            {
                entity.CreateTime = DateTime.Now;
                entity.UpdateTime = DateTime.Now;
            }

            #endregion

            #region 处理 BaseEntity

            //Insert
            var insertEntries = entityEntries
                .Where(w => w.Entity is ICreateBaseEntity && w.State == EntityState.Added)
                .Select(item => (ICreateBaseEntity)item.Entity)
                .ToList();
            foreach (var item in insertEntries)
            {
                item.CreateTime = DateTime.Now;
                item.CreateUserId = userId;
            }

            //Update
            var updateEntries = entityEntries
                .Where(w => w.Entity is IUpdateBaseEntity && w.State == EntityState.Modified) // || w.State == EntityState.Unchanged
                .Select(item => (IUpdateBaseEntity)item.Entity)
                .ToList();
            foreach (var item in updateEntries)
            {
                item.UpdateTime = DateTime.Now;
                item.UpdateUserId = userId;
            }

            //Delete
            var deleteEntries = entityEntries
                .Where(w => w.Entity is IDeleteBaseEntity && w.State == EntityState.Deleted);
            foreach (var item in deleteEntries)
            {
                item.State = EntityState.Modified;
                var entity = (IDeleteBaseEntity)item.Entity;
                entity.IsDeleted = true;
                entity.DeleteTime = DateTime.Now;
                entity.DeleteUserId = userId;
            }

            #endregion

            return base.SavingChanges(eventData, result);
        }

        public override ValueTask<InterceptionResult<int>> SavingChangesAsync(DbContextEventData eventData, InterceptionResult<int> result, CancellationToken cancellationToken = default)
        {
            var userId = Guid.Empty;

            using var scope = IOCUtil.CreateScope();
            var _tokenService = scope.ServiceProvider.GetService<TokenService>();
            userId = _tokenService.GetAccountIdByToken();

            var entries = eventData.Context.ChangeTracker.Entries();
            var entityEntries = entries as EntityEntry[] ?? entries.ToArray();

            #region 处理 DefaultBaseEntity

            //Update
            var updateEntries_BaseModel = entityEntries
                .Where(w => w.Entity is DefaultBaseEntity && w.State == EntityState.Modified) // || w.State == EntityState.Unchanged
                .Select(item => (DefaultBaseEntity)item.Entity)
                .ToList();
            updateEntries_BaseModel.ForEach(w => w.UpdateTime = DateTime.Now);

            //Insert
            var insertEntries_BaseModel = entityEntries
                .Where(w => w.Entity is DefaultBaseEntity && w.State == EntityState.Added)
                .Select(item => (DefaultBaseEntity)item.Entity)
                .ToList();
            foreach (var entity in insertEntries_BaseModel)
            {
                entity.CreateTime = DateTime.Now;
                entity.UpdateTime = DateTime.Now;
            }

            #endregion

            #region 处理 BaseEntity

            //Insert
            var insertEntries = entityEntries
                .Where(w => w.Entity is ICreateBaseEntity && w.State == EntityState.Added)
                .Select(item => (ICreateBaseEntity)item.Entity)
                .ToList();
            foreach (var item in insertEntries)
            {
                item.CreateTime = DateTime.Now;
                item.CreateUserId = userId;
            }

            //Update
            var updateEntries = entityEntries
                .Where(w => w.Entity is IUpdateBaseEntity && w.State == EntityState.Modified) // || w.State == EntityState.Unchanged
                .Select(item => (IUpdateBaseEntity)item.Entity)
                .ToList();
            foreach (var item in updateEntries)
            {
                item.UpdateTime = DateTime.Now;
                item.UpdateUserId = userId;
            }

            //Delete
            var deleteEntries = entityEntries
                .Where(w => w.Entity is IDeleteBaseEntity && w.State == EntityState.Deleted);
            foreach (var item in deleteEntries)
            {
                item.State = EntityState.Modified;
                var entity = (IDeleteBaseEntity)item.Entity;
                entity.IsDeleted = true;
                entity.DeleteTime = DateTime.Now;
                entity.DeleteUserId = userId;
            }

            #endregion

            return base.SavingChangesAsync(eventData, result, cancellationToken);
        }

        public override void SaveChangesFailed(DbContextErrorEventData eventData)
        {
            base.SaveChangesFailed(eventData);
        }

        public override Task SaveChangesFailedAsync(DbContextErrorEventData eventData, CancellationToken cancellationToken = default)
        {
            return base.SaveChangesFailedAsync(eventData, cancellationToken);
        }


    }
}
