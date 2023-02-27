using B_LL.CartPro;
using D_AL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace B_LL.CartManager
{
    public class ViewCart
    {
        private DBHelper dBHelper_Obj = new DBHelper();
        private SortedList S1 = new SortedList();
        public ViewCartPro CartPro_Obj = new ViewCartPro();

      

        public DataTable ViewCart1()
        {
            DataTable dt = new DataTable();
            dt = dBHelper_Obj.getdatatable("sp_ViewCart");
            
            return dt;
        }
        public string CartDelete()
        {
            S1.Clear();
            S1.Add("Item_Id", CartPro_Obj.Item_Id);
            return dBHelper_Obj.executeprocedure(S1, "cartdelete");
        }


        public List<ViewCartPro> SellectAllCart()
        {
            DataTable dt = new DataTable();
            dt = dBHelper_Obj.getdatatable("selectregcart");
            List<ViewCartPro> _list = new List<ViewCartPro>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new ViewCartPro
                {
                    Id = Convert.ToInt32(dr["Id"]),
                    Item_Id = Convert.ToInt32(dr["Item_Id"]),
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
