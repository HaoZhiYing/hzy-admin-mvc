using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Model.BaseEntitys
{
    public class BaseEntity<TKey> : IBaseEntity<TKey>
    {
        [Key]
        public TKey Id { get; set; }
    }

    public interface IBaseEntity<TKey>
    {
        TKey Id { get; set; }
    }

}
