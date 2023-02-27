using project;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL.ADMIN.PROPERTY;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

namespace BLL.Manager
{
    public class StartManager
    {
        private DBhelper dbh = new DBhelper();
        public RestaurantProperty prop = new RestaurantProperty();
        private SortedList S1 = new SortedList();
        public DataTable ListAllRestaurants()
        {
            DataTable dt = new DataTable();
            dt = dbh.getdatatable("ListAllRestaurants");
            return dt;
        }

        public string displaymenu()
        {
            S1.Clear();
            S1.Add("Rest_Id", prop.ID);         
            return dbh.executeprocedure(S1, "displaymenu");
        }
    }
}
