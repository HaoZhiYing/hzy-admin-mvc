using HZY.Model.BaseEntitys;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace HZY.Model.Entities.Framework
{
    /// <summary>
    /// 数据字典
    /// </summary>
    public class SysDictionary : DefaultBaseEntity<Guid>
    {
        /// <summary>
        /// 排序号
        /// </summary>
        public int Sort { get; set; }

        /// <summary>
        /// 编码
        /// </summary>
        public string Code { get; set; }

        /// <summary>
        /// 分组名称/键
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 值
        /// </summary>
        public string Value { get; set; }

        /// <summary>
        /// 父级Id
        /// </summary>
        public Guid? ParentId { get; set; }


    }
}
