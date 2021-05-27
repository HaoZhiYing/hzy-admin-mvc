﻿using HZY.Common;
using HZY.Repository.AppCore.Extensions;
using HZY.Repository.Domain.Framework;
using HZY.Repository.Framework;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HZY.Admin.Services.Framework
{
    public class SysOrganizationService : AdminBaseService<SysOrganizationRepository>
    {
        public SysOrganizationService(SysOrganizationRepository repository) : base(repository)
        {

        }

        /// <summary>
        /// 获取列表数据
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        public async Task<List<SysOrganization>> FindListAsync(SysOrganization search)
        {
            //var expandedRowKeys = await this.Repository.Select
            //    .WhereIf(search?.State == null, w => w.State == StateEnum.正常)
            //    .WhereIf(search?.State != null, w => w.State == search.State)
            //    .WhereIf(!string.IsNullOrWhiteSpace(search?.Name), w => w.Name.Contains(search.Name))
            //    .ToListAsync(w => w.Id);

            var data = await this.Repository.Select
                    .WhereIf(search?.State == null, w => w.State == StateEnum.正常)
                    .WhereIf(search?.State != null, w => w.State == search.State)
                    .WhereIf(!string.IsNullOrWhiteSpace(search?.Name), w => w.Name.Contains(search.Name))
                    .OrderBy(w => w.OrderNumber)
                    .ToListAsync()
                ;

            return data;
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        public async Task DeleteListAsync(List<Guid> ids)
        {
            await this.Repository.DeleteAsync(w => ids.Contains(w.Id));
        }

        /// <summary>
        /// 查询表单数据
        /// </summary>
        /// <param name="id"></param>
        /// <param name="parentId"></param>
        /// <returns></returns>
        public async Task<Dictionary<string, object>> FindFormAsync(Guid id, Guid parentId)
        {
            var res = new Dictionary<string, object>();
            var form = await this.Repository.FindByIdAsync(id);
            form = form.NullSafe();

            if (id == Guid.Empty)
            {
                var maxNum = await this.Repository.Select
                    .WhereIf(parentId == Guid.Empty, w => w.ParentId == null)
                    .WhereIf(parentId != Guid.Empty, w => w.ParentId == parentId)
                    .MaxAsync(w => w.OrderNumber);
                form.OrderNumber = maxNum + 1;
            }

            res[nameof(id)] = id == Guid.Empty ? "" : id;
            res[nameof(form)] = form;
            return res;
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        public async Task<SysOrganization> SaveFormAsync(SysOrganization form)
        {
            return await this.Repository.InsertOrUpdateAsync(form);
        }



    }
}
