using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Model.BaseEntitys
{
    public class CreateBaseEntity<TKey> : BaseEntity<TKey>, ICreateBaseEntity, IBaseEntity<TKey>
    {
        public Guid? CreateUserId { get; set; }
        public DateTime CreateTime { get; set; }
    }

    public interface ICreateBaseEntity
    {
        /// <summary>
        /// 创建用户
        /// </summary>
        public Guid? CreateUserId { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateTime { get; set; }
    }

}
