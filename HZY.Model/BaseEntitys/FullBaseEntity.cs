using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Model.BaseEntitys
{
    public class FullBaseEntity<TKey> : DeleteBaseEntity<TKey>, IDeleteBaseEntity, IUpdateBaseEntity, IBaseEntity<TKey>
    {

    }
}
