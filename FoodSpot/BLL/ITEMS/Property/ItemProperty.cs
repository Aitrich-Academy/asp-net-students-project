using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Admin.Property
{
    public class ItemProperty
    {
        public int Item_Id { get; set; }

        public int Cat_Id { get; set; }

        public string Item_Name { get; set; }

        public int Item_Price { get; set; }

        public string Image { get; set; }

        public string Description { get; set; }

        public string Status { get; set; }

        public string Cat_Name { get; set; }
    }
}
