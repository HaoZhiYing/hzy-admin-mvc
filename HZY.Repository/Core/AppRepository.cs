using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using FreeSql;
using HZY.Repository.Core.Models;

namespace HZY.Repository.Core
{
    /// <summary>
    /// 仓储服务基类
    /// </summary>
    /// <typeparam name="TModel"></typeparam>
    public class AppRepository<TModel> : AppRepository<TModel, Guid> where TModel : class
    {
        public AppRepository(IFreeSql freeSql, Expression<Func<TModel, bool>> filter = null)
            : base(freeSql, filter)
        {
        }
    }

    /// <summary>
    /// 仓储服务基类
    /// </summary>
    /// <typeparam name="TModel"></typeparam>
    /// <typeparam name="TKey"></typeparam>
    public class AppRepository<TModel, TKey> : BaseRepository<TModel, TKey> where TModel : class
    {
        public AppRepository(IFreeSql freeSql, Expression<Func<TModel, bool>> filter,
            Func<string, string> asTable = null) : base(freeSql, filter, asTable)
        {
        }

        /// <summary>
        /// 根据 id 数组删除数据
        /// </summary>
        /// <param name="keys"></param>
        /// <returns></returns>
        public Task<int> DeleteAsync(IEnumerable<TKey> keys)
        {
            return this.Orm.Delete<TModel>(keys).ExecuteAffrowsAsync();
        }

        /// <summary>
        /// 转换为分页视图模型
        /// </summary>
        /// <param name="data"></param>
        /// <param name="page"></param>
        /// <param name="size"></param>
        /// <param name="total"></param>
        /// <typeparam name="TData"></typeparam>
        /// <returns></returns>
        public Task<PagingViewModel> AsPagingViewModelAsync<TData>(IEnumerable<TData> data, int page, int size,
            long total)
        {
            var pagingViewModel = new PagingViewModel();

            var propertyInfos = typeof(TData).GetProperties();
            var fieldNames = propertyInfos.Select(item => item.Name).ToList();

            pagingViewModel.Columns = fieldNames;

            var result = new List<Dictionary<string, object>>();
            foreach (var item in data)
            {
                var type = item.GetType();
                var dictionary = new Dictionary<string, object>();

                foreach (var fieldName in fieldNames)
                {
                    dictionary[fieldName] = type.GetProperty(fieldName)?.GetValue(item);
                }

                result.Add(dictionary);
            }

            pagingViewModel.DataSource = result;
            pagingViewModel.PageCount = (total / size);
            pagingViewModel.Page = page;
            pagingViewModel.Size = size;
            pagingViewModel.Total = total;
            return Task.FromResult(pagingViewModel);
        }
    }
}