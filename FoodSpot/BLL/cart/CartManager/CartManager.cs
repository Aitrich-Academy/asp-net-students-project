using BLL.cart.CartPro;
using project;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.cart.CartManager
{
    public class CartManager
    {
        private DBhelper dBHelper_Obj = new DBhelper();
        private SortedList S1 = new SortedList();
        public ViewCartPro CartPro_Obj = new ViewCartPro();



        public DataTable ViewCart1()
        {
            S1.Clear();
            S1.Add("Id", CartPro_Obj.Cust_Id);
            return dBHelper_Obj.getdatatable(S1, "sp_ViewCart");

        }
        public string CartDelete()
        {
            S1.Clear();
            S1.Add("ItemId", CartPro_Obj.Item_Id);
            return dBHelper_Obj.executeprocedure(S1, "cartdelete");
        }


        public List<ViewCartPro> SellectAllCart()
        {
            DataTable dt = new DataTable();
            S1.Clear();
            S1.Add("Id", CartPro_Obj.Cust_Id);
            dt = dBHelper_Obj.getdatatable(S1, "sp_ViewCart");
            List<ViewCartPro> _list = new List<ViewCartPro>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new ViewCartPro
                {
                    Id = Convert.ToInt32(dr["Book_Id"]),
                    //Item_Id = Convert.ToInt32(dr["Item_Id"]),
                    Image = dr["Image"].ToString(),
                    Item_Name = dr["Item_Name"].ToString(),
                    Book_Quantity = Convert.ToInt32(dr["Book_Quantity"]),
                    Book_Price = Convert.ToInt32(dr["Book_Price"]),
                });
            }
            return _list;
        }

    }
}
