/*
 * *******************************************************
 *
 * 作者：hzy
 *
 * 开源地址：https://gitee.com/hzy6
 *
 * *******************************************************
 */

using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using System;
using HzyScanDiService;
using HzyEFCoreRepositories.Repositories.Impl;
using HzyEFCoreRepositories.Extensions;
using HzyEFCoreRepositories.Repositories;
using HZY.EFCore.DbContexts;
using HZY.EFCore.PagingViews;

namespace HZY.EFCore.Repositories
{
    /// <summary>
    /// 默认基础仓储
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class AdminBaseRepository<T> : RepositoryBaseImpl<T, AdminDbContext>, IRepositoryBase<T, AdminDbContext>, IScopedSelfDependency
        where T : class, new()
    {
        public AdminBaseRepository(AdminDbContext context) : base(context)
        {

        }

        /// <summary>
        /// 查询转换为分页视图模型
        /// </summary>
        /// <param name="query"></param>
        /// <param name="page"></param>
        /// <param name="size"></param>
        /// <param name="columnHeads"></param>
        /// <typeparam name="TModel"></typeparam>
        /// <returns></returns>
        public virtual async Task<PagingView> AsPagingViewAsync<TModel>(IQueryable<TModel> query,
            int page,
            int size,
            List<TableColumnView> columnHeads = default)
        {
            var pagingView = new PagingView { Page = page, Size = size };

            //如果分页码 小于 0 则代表导出 否则代表分页查询
            if (page > 0)
            {
                pagingView.Total = await query.CountAsync();
                pagingView.PageCount = pagingView.Total / size;
                query = query.Page(page, size);
            }

            var data = await query.ToListAsync();

            var propertyInfos = typeof(TModel).GetProperties();
            var fieldNames = propertyInfos.Select(item => item.Name).ToList();

            pagingView.InitColumns(fieldNames, columnHeads, typeof(T));
            //
            pagingView.CreateDataSource(data, fieldNames);

            return pagingView;
        }

        /// <summary>
        /// 查询转换为分页视图模型 支持 Sql 字符串
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="page"></param>
        /// <param name="size"></param>
        /// <param name="orderBy"></param>
        /// <param name="columnHeads"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        public virtual async Task<PagingView> AsPagingViewAsync(string sql,
            int page,
            int size,
            string orderBy = "1",
            List<TableColumnView> columnHeads = default,
            params object[] parameters)
        {
            var pagingView = new PagingView { Page = page, Size = size };

            //如果分页码 小于 0 则代表导出 否则代表分页查询
            var sqlString = sql;
            if (page > 0)
            {
                pagingView.Total = await QuerySingleBySqlAsync<long>($"SELECT COUNT(1) FROM ({sql}) TAB", parameters);
                pagingView.PageCount = pagingView.Total / size;
                var offSet = size * (page - 1);
                sqlString = string.Empty;

                if (Orm.Database.IsSqlServer())
                {
                    sqlString = $"SELECT * FROM ({sql}) TAB ORDER BY {orderBy} OFFSET {offSet} ROWS FETCH NEXT {size} ROWS ONLY";
                }
                else if (Orm.Database.IsMySql() || Orm.Database.IsNpgsql())
                {
                    sqlString = $"SELECT * FROM ({sql}) TAB ORDER BY {orderBy} LIMIT {size} OFFSET {offSet}";
                }
                else
                {
                    throw new Exception("查询数据库类型不支持!");
                }
            }

            var data = await QueryDataTableBySqlAsync(sqlString, parameters);
            var fieldNames = (from DataColumn dc in data.Columns select dc.ColumnName).ToList();

            pagingView.InitColumns(fieldNames, columnHeads, typeof(T));
            //
            pagingView.CreateDataSource(data, fieldNames);

            return pagingView;
        }
    }
}