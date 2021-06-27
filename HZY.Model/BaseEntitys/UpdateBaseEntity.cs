using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Model.BaseEntitys
{
    public class UpdateBaseEntity<TKey> : CreateBaseEntity<TKey>, IUpdateBaseEntity, ICreateBaseEntity, IBaseEntity<TKey>
    {
        public Guid? UpdateUserId { get; set; }
        public DateTime? UpdateTime { get; set; }
    }

    public interface IUpdateBaseEntity
    {
        /// <summary>
        /// 更新用户
        /// </summary>
        public Guid? UpdateUserId { get; set; }
        /// <summary>
        /// 更新时间
        /// </summary>
        public DateTime? UpdateTime { get; set; }
    }

}
