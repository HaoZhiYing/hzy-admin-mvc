using HZY.Admin.Services.Framework;
using HZY.Framework.Permission.Attributes;
using HZY.Repository.AppCore.Attributes;
using HZY.Repository.Domain.Framework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace HZY.Admin.Controllers.Framework
{
    /// <summary>
    /// 组织机构控制器
    /// </summary>
    [ControllerDescriptor("d29fde94-0d6a-4a64-8446-55ee63df5885")]
    public class SysOrganizationController : AdminBaseController<SysOrganizationService>
    {
        public SysOrganizationController(SysOrganizationService defaultService) : base(defaultService)
        {

        }

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("FindList")]
        public async Task<dynamic> FindListAsync([FromBody] SysOrganization search)
        {
            var (expandedRowKeys, data) = await this.DefaultService.FindListAsync(search);

            return new
            {
                expandedRowKeys,
                rows = data
            };
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("DeleteList")]
        public async Task<bool> DeleteListAsync([FromBody] List<Guid> ids)
        {
            await this.DefaultService.DeleteListAsync(ids);
            return true;
        }

        /// <summary>
        /// 查询表单数据
        /// </summary>
        /// <param name="id"></param>
        /// <param name="parentId"></param>
        /// <returns></returns>
        [HttpGet("FindForm/{id?}/{parentId?}")]
        public async Task<Dictionary<string, object>> FindFormAsync([FromRoute] Guid id, Guid parentId)
        {
            return await this.DefaultService.FindFormAsync(id, parentId);
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("SaveForm")]
        public async Task<SysOrganization> SaveFormAsync([FromBody] SysOrganization form)
        {
            return await this.DefaultService.SaveFormAsync(form);
        }







    }
}
