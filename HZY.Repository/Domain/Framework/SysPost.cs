using HZY.Repository.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Repository.Domain.Framework
{
    /// <summary>
    /// 岗位
    /// </summary>
    public class SysPost : GuidKeyBaseModel
    {
        /// <summary>
        /// 编号
        /// </summary>
        public int? Number { get; set; }

        /// <summary>
        /// 岗位编码
        /// </summary>
        public string Code { get; set; }

        /// <summary>
        /// 岗位名称
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 状态
        /// </summary>
        public StateEnum State { get; set; } = StateEnum.正常;
    }

    /// <summary>
    /// 状态 枚举
    /// </summary>
    public enum StateEnum
    {
        正常 = 1,
        停用
    }
}
