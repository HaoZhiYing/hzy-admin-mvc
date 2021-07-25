using HZY.Model.Entities.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Model.FormDto
{
    public class SysDictionaryDto : SysDictionary
    {

        public Guid Key
        {
            get
            {
                return Id;
            }
        }

        public string Title
        {
            get
            {
                return Name;
            }
        }

        public List<SysDictionaryDto> Children { get; set; }


    }
}
