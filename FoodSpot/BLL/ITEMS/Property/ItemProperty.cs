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

        public int Cust_Id { get; set; }

        public int Rest_Id { get; set; }

        public object CheckBoxDeliver { get; private set; }

        public string Rest_Email { get; set; }

        public int Book_Id { get; set; }

        public int Book_Quantity { get; set; }

        public int Book_Price { get; set; }
        public string Item_Name { get; set; }

        public string Cust_Name { get; set; }

        public string Phone_Number { get; set; }

        public string Cust_Email { get; set; }

        public string Cust_Address { get; set; }

        public string Cust_Pincode { get; set; }
        public int Item_Price { get; set; }

        public string Image { get; set; }

        public string Description { get; set; }

        public string Status { get; set; }

        public string Cat_Name { get; set; }

        public string CheckBoxCancel { get; set; }
  
    }
}
