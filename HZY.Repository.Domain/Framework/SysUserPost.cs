using HZY.Repository.Domain.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Repository.Domain.Framework
{
    /// <summary>
    /// 用户鱼岗位绑定表
    /// </summary>
    public class SysUserPost : GuidKeyBaseModel
    {
        /// <summary>
        /// 账户Id
        /// </summary>
        public Guid UserId { get; set; }

        /// <summary>
        /// 岗位Id
        /// </summary>
        public Guid PostId { get; set; }
    }



}
