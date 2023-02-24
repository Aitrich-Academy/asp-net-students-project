using BLL.ADMIN.PROPERTY;
using project;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.ADMIN.MANAGER
{
   public class CatManager
    {
        private DBhelper Db_obj = new DBhelper();
        public CategoryProperty Cat_pro = new CategoryProperty();
        private SortedList Sort = new SortedList();
        public string CatInsert()
        {
            Sort.Clear();
            Sort.Add("Cat_Name", Cat_pro.Cat_Name);
            return Db_obj.executeprocedure(Sort, "CategoryInsert");
        }
        public List<CategoryProperty> SelectAllCategory()
        {
            DataTable dT = new DataTable();
            dT = Db_obj.getdatatable("SelectAllCategory");
            List<CategoryProperty> _list = new List<CategoryProperty>();
            foreach (DataRow dR in dT.Rows)
            {
                _list.Add(new CategoryProperty
                {
                    Cat_Id = Convert.ToInt32(dR["Cat_Id"]),
                    Cat_Name = dR["Cat_Name"].ToString(),
                    Cat_Staus = dR["Cat_Staus"].ToString()
                });
            }
            return _list;

        }
        public string CatDelete()
        {
            Sort.Clear();
            Sort.Add("Cat_Id", Cat_pro.Cat_Id);
            return Db_obj.executeprocedure(Sort, "CategoryDelete");
        }
        public void SelectCat()
        {
            Sort.Clear();
            Sort.Add("Cat_Id", Cat_pro.Cat_Id);
            DataTable dT = new DataTable();
            dT = Db_obj.getdatatable(Sort, "SelectCategory");
            if (dT.Rows.Count > 0)
            {
                Cat_pro.Cat_Name = dT.Rows[0].ItemArray[1].ToString();
            }
        }
        public string CatUpdate()
        {
            Sort.Clear();
            Sort.Add("Cat_Id", Cat_pro.Cat_Id);
            Sort.Add("Cat_Name", Cat_pro.Cat_Name);
            return Db_obj.executeprocedure(Sort, "CategoryUpdate");
        }
    }
}
