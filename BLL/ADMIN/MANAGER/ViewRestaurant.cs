using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using project;

namespace BLL.ADMIN.MANAGER
{
    public class ViewRestaurant
    {
        private DBhelper Db_Obj = new DBhelper();
        private SortedList S_List = new SortedList();

        public DataTable SelectAllRestaurants()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("sp_ListRestaurants");



            return dt;
        }

    }
}
