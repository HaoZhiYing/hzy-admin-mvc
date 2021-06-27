using System;
using System.ComponentModel.DataAnnotations;

namespace HZY.Model.BaseEntitys
{
    /// <summary>
    /// 基础模型
    /// 包含属性 UpdateTime、CreateTime
    /// </summary>
    public class DefaultBaseEntity
    {
        /// <summary>
        /// 更新时间
        /// </summary>
        public DateTime UpdateTime { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateTime { get; set; }
    }

    /// <summary>
    /// 基础模型
    /// 包含属性 Id、UpdateTime、CreateTime
    /// </summary>
    /// <typeparam name="TKey"></typeparam>
    public class DefaultBaseEntity<TKey> : DefaultBaseEntity
    {
        [Key]
        public TKey Id { get; set; } = default;
    }
}