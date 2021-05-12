using HZY.Repository.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Repository.Domain.Framework
{
    public class SysOrganization : GuidKeyBaseModel
    {
        /// <summary>
        /// 部门名称
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 部门排序号
        /// </summary>
        public int? OrderNumber { get; set; }

        /// <summary>
        /// 负责人
        /// </summary>
        public string Leader { get; set; }

        /// <summary>
        /// 联系电话
        /// </summary>
        public string Phone { get; set; }

        /// <summary>
        /// 邮箱
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// 状态
        /// </summary>
        public StateEnum? State { get; set; } = StateEnum.正常;

        /// <summary>
        /// 父级Id
        /// </summary>
        public Guid? ParentId { get; set; }

        // [Navigate(nameof(ParentId))] public SysDepartment Parent { get; set; }
        //[Navigate(nameof(ParentId))] public List<SysDepartment> Children { get; set; }
    }
}
