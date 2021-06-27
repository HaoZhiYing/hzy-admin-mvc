﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Model.BaseEntitys
{
    public class DeleteBaseEntity<TKey> : UpdateBaseEntity<TKey>, IDeleteBaseEntity, IUpdateBaseEntity, IBaseEntity<TKey>
    {
        public bool IsDeleted { get; set; } = false;
        public Guid? DeleteUserId { get; set; }
        public DateTime? DeleteTime { get; set; }
    }

    public interface IDeleteBaseEntity
    {
        /// <summary>
        /// 是否删除
        /// </summary>
        bool IsDeleted { get; set; }
        /// <summary>
        /// 删除用户
        /// </summary>
        Guid? DeleteUserId { get; set; }
        /// <summary>
        /// 删除时间
        /// </summary>
        DateTime? DeleteTime { get; set; }

    }


}
