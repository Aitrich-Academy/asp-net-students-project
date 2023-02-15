using BLL.Admin.Property;
using BLL.CATEGORY.Property;
using BLL.Property;
using project;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    
    
    public class MenuManager

    {
        private DBhelper dbh = new DBhelper();
        public CategoryProperty prop = new CategoryProperty();
        public ItemProperty itemProp_Obj = new ItemProperty();
        private SortedList S1 = new SortedList();
        public RestaurantProperty proper = new RestaurantProperty();
        public BookingProperty bprop = new BookingProperty();
        public LoginProperty logpro = new LoginProperty();
        
        public DataTable Displaymenu()
        {
            DataTable dt = new DataTable();
            dt = dbh.getdatatable("displaymenu");
            return dt;
        }
        public DataTable displaymenu()
        {
            S1.Clear();
            S1.Add("Rest_Id", proper.ID);
            DataTable dt= dbh.getdatatable(S1, "displaymenu");
            return dt;
        }

        public string bookingquery(string s)
        {
            logpro.log_Id = int.Parse(s);
            S1.Clear();
            S1.Add("Cust_Id", logpro.log_Id) ;
            S1.Add("Item_Id", itemProp_Obj.Item_Id);
            S1.Add("Book_Quantity", bprop.Book_Quantity);
            return dbh.executeprocedure(S1, "bookingquery");
        }
        
    }
}
