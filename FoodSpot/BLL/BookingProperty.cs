using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BookingProperty
    {

        public int Book_Id { get; set; }
        public int Item_Id { get; set; }
        public int Cust_Id { get; set; }
        public int Book_Quantity { get; set; }
        public int Book_Price { get; set; }
        public string Status { get; set; }

    }
}

