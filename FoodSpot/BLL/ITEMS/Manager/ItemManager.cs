using BLL.Admin.Property;

using Food_Mgmt_System;
using project;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Admin.Manager
{
    public class ItemManager
    {
        private DBhelper DB_Obj = new DBhelper();
        public ItemProperty itemProp_Obj = new ItemProperty();
        public CategoryProperty catProp_obj = new CategoryProperty();
        private SortedList s1 = new SortedList();

        public List<ItemProperty> SelectAllItems()
        {
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable("sp_SelectAllItems");
            List<ItemProperty> list = new List<ItemProperty>();

            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new ItemProperty
                {
                    Item_Id = Convert.ToInt32(dr["Item_Id"]),
                    Cat_Name = (dr["Cat_Name"].ToString()),
                    Item_Name = dr["Item_Name"].ToString(),
                    Item_Price = Convert.ToInt32(dr["Item_Price"]),
                    Image = dr["Image"].ToString(),
                    Description = dr["Description"].ToString(),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }

        public string InsertItem()
        {
            s1.Clear();
            s1.Add("catId", itemProp_Obj.Cat_Id);
            s1.Add("name",itemProp_Obj.Item_Name);
            s1.Add("price",itemProp_Obj.Item_Price);
            s1.Add("image",itemProp_Obj.Image);
            s1.Add("description",itemProp_Obj.Description);
            return DB_Obj.executeprocedure(s1,"Item_Insert");
        }

        public string UpdateItem()
        {
            s1.Clear();
            s1.Add("item_id", itemProp_Obj.Item_Id);
            s1.Add("cat_id",itemProp_Obj.Cat_Id);
            s1.Add("itemname",itemProp_Obj.Item_Name);
            s1.Add("itemprice",itemProp_Obj.Item_Price);
            s1.Add("image",itemProp_Obj.Image);
            s1.Add("description",itemProp_Obj.Description);
            return DB_Obj.executeprocedure(s1,"sp_ItemUpdate");
        }
        public List<CategoryProperty> SelectAllCategory()
        {
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable("sp_SelectAllCategory");
            List<CategoryProperty> list = new List<CategoryProperty>();
            list.Add(new CategoryProperty
            {
                Cat_Name="--SELECT ANY--",Cat_Id=0
            });
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new CategoryProperty
                {
                    Cat_Name = dr["Cat_Name"].ToString(),
                    Cat_Id = Convert.ToInt32(dr["Cat_Id"])
                }) ;
            }
            return list;
        }

        public void SelectItemById()
        {
            s1.Clear();
            s1.Add("id", itemProp_Obj.Item_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(s1, "sp_selectItemById");

            if (dt.Rows.Count > 0)
            {
                itemProp_Obj.Item_Id = Convert.ToInt32( dt.Rows[0].ItemArray[0]);
                itemProp_Obj.Cat_Id = int.Parse( dt.Rows[0].ItemArray[1].ToString());
                itemProp_Obj.Item_Name = dt.Rows[0].ItemArray[3].ToString();
                itemProp_Obj.Item_Price=int.Parse( dt.Rows[0].ItemArray[4].ToString());
                itemProp_Obj.Description = dt.Rows[0].ItemArray[6].ToString();
                
       
            }
        }

        public string DeleteItem()
        {
            s1.Clear();
            s1.Add("id", itemProp_Obj.Item_Id);
            return DB_Obj.executeprocedure(s1, "sp_deleteItem");
        }

    }
}

