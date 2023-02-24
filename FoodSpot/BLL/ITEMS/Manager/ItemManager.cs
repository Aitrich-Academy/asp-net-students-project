using BLL.Admin.Property;
using BLL.Services;
using Food_Mgmt_System;
using project;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Admin.Manager
{
    public class ItemManager
    {
        DBhelper DB_Obj = new DBhelper();
        public ItemProperty itemProp_Obj = new ItemProperty();
        public CategoryProperty catProp_obj = new CategoryProperty();
        public SortedList s1 = new SortedList();
        public object itemProp_obj;

        public List<ItemProperty> selectAllBookings()
        {
            s1.Clear();
            s1.Add("rest_Id",itemProp_Obj.Rest_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(s1,"sp_selectAllBookings");
            List<ItemProperty> list = new List<ItemProperty>();


            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new ItemProperty
                {
                    // Book_Id = Convert.ToInt32(dr["Book_Id"]),
                    Cust_Name = dr["Cust_Name"].ToString(),
                    Rest_Id = Convert.ToInt32(dr["Rest_Id"]),
                    Phone_Number = dr["Phone_Number"].ToString(),
                   // Item_Id=Convert.ToInt32(dr["Item_Id"]),
                    Cust_Id = Convert.ToInt32(dr["Cust_Id"]),
                    Status = dr["Status"].ToString(),
                }); 
            }
            return list;
        }
        public string InsertItem()
        {
            s1.Clear();
            s1.Add("catId", itemProp_Obj.Cat_Id);
            s1.Add("name", itemProp_Obj.Item_Name);
            s1.Add("price", itemProp_Obj.Item_Price);
            s1.Add("image", itemProp_Obj.Image);
            s1.Add("description", itemProp_Obj.Description);
            return DB_Obj.executeprocedure(s1, "Item_Insert");
        }

        public string DeliverCheck()
        {
            s1.Clear();
            s1.Add("cust_id", itemProp_Obj.Cust_Id);
            return DB_Obj.executeprocedure(s1, "sp_DeliveryCheck");
        }

        //public List<ItemProperty> SelectCustomerDetails()
        //{
        //    s1.Clear();
        //    s1.Add("cust_id", itemProp_Obj.Cust_Id);
        //    DataTable dt = new DataTable();
        //    DB_Obj.executeprocedure(s1, "sp_CustomerDetails");
        //    List<ItemProperty> list = new List<ItemProperty>();

        //    foreach (DataRow dr in dt.Rows)
        //    {
        //        list.Add(new ItemProperty
        //        {

        //            Cust_Name = dr["Cust_Name"].ToString(),
        //            Phone_Number = dr["Phone_Number"].ToString(),
        //            Cust_Email = dr["Cust_Email"].ToString(),
        //            Cust_Address = dr["Cust_Address"].ToString(),
        //            Cust_Pincode = dr["Cust_Pincode"].ToString(),
        //            Cust_Id = Convert.ToInt32(dr["Cust_Id"]),
        //        });
        //    }
        //    return list;
        //}
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

        public DataTable SelectCustomerDetails()
        {
            s1.Clear();
            s1.Add("id", itemProp_Obj.Cust_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(s1, "sp_SelectCustomerDetails");

            if (dt.Rows.Count > 0)
            {
                itemProp_Obj.Cust_Name = dt.Rows[0].ItemArray[0].ToString();
                itemProp_Obj.Phone_Number = dt.Rows[0].ItemArray[1].ToString();
                itemProp_Obj.Cust_Email = dt.Rows[0].ItemArray[2].ToString();
                itemProp_Obj.Cust_Address = dt.Rows[0].ItemArray[3].ToString();
                itemProp_Obj.Cust_Pincode = dt.Rows[0].ItemArray[4].ToString();
            }
            return dt;
        }
        public DataTable SelectItemsListing()
        {
            s1.Clear();
            s1.Add("rest_Id", itemProp_Obj.Rest_Id );
            s1.Add("cusId", itemProp_Obj.Cust_Id);

            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(s1, "sp_ItemsListing");

            if (dt.Rows.Count > 0)
            {
                itemProp_Obj.Item_Name = dt.Rows[0].ItemArray[0].ToString();
                itemProp_Obj.Item_Price = Convert.ToInt32(dt.Rows[0].ItemArray[1]);
                itemProp_Obj.Book_Quantity = Convert.ToInt32(dt.Rows[0].ItemArray[2]);
                itemProp_Obj.Book_Price = Convert.ToInt32(dt.Rows[0].ItemArray[3]);
                itemProp_Obj.Image = dt.Rows[0].ItemArray[4].ToString();
            }
            return dt;
        }



        public DataTable SearchItemsByCategory()
        {
            s1.Clear();
            s1.Add("catId", itemProp_Obj.Cat_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(s1, "Sp_SearchItemsByCategory");

            if (dt.Rows.Count > 0)
            {
                //itemProp_Obj.Item_Id = Convert.ToInt32(dt.Rows[0].ItemArray[0]);
                itemProp_Obj.Cat_Name = dt.Rows[0].ItemArray[0].ToString();
                itemProp_Obj.Item_Name = dt.Rows[0].ItemArray[1].ToString();
                itemProp_Obj.Item_Price = Convert.ToInt32(dt.Rows[0].ItemArray[2]);
                itemProp_Obj.Image = dt.Rows[0].ItemArray[3].ToString();
                itemProp_Obj.Description = dt.Rows[0].ItemArray[4].ToString();

            }
            return dt;
        }

        public string DeleteItem()
        {
            s1.Clear();
            s1.Add("id", itemProp_Obj.Item_Id);
            return DB_Obj.executeprocedure(s1, "sp_deleteItem");
        }

        public void SelectItemById()
        {
            s1.Clear();
            s1.Add("id", itemProp_Obj.Item_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(s1, "sp_selectItemById");

            if (dt.Rows.Count > 0)
            {
                itemProp_Obj.Item_Id = Convert.ToInt32(dt.Rows[0].ItemArray[0]);
                itemProp_Obj.Cat_Id = int.Parse(dt.Rows[0].ItemArray[1].ToString());
                itemProp_Obj.Item_Name = dt.Rows[0].ItemArray[3].ToString();
                itemProp_Obj.Item_Price = int.Parse(dt.Rows[0].ItemArray[4].ToString());
                itemProp_Obj.Description = dt.Rows[0].ItemArray[6].ToString();

            }
        }
        public void SelectMailReceiv()
        {
            s1.Clear();
            s1.Add("cust_id",itemProp_Obj.Cust_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(s1, "sp_selectmailid");

            if (dt.Rows.Count > 0)
            {
                itemProp_Obj.Cust_Id = Convert.ToInt32(dt.Rows[0].ItemArray[0]);
                itemProp_Obj.Cust_Name = dt.Rows[0].ItemArray[1].ToString();
                itemProp_Obj.Item_Name = dt.Rows[0].ItemArray[2].ToString();
                itemProp_Obj.Item_Price = Convert.ToInt32(dt.Rows[0].ItemArray[3]);
                itemProp_Obj.Book_Quantity = Convert.ToInt32(dt.Rows[0].ItemArray[4]);
                itemProp_Obj.Book_Price = Convert.ToInt32(dt.Rows[0].ItemArray[5]);
                itemProp_Obj.Cust_Email = dt.Rows[0].ItemArray[6].ToString();
            }
        }
        public void FunctionForMail(string path)
        {
            MailServices emailService = new MailServices();
            emailService.MailSending(itemProp_Obj.Cust_Email, Mail_Body(path));
        }
        private AlternateView Mail_Body(string path)
        {
            LinkedResource Img = new LinkedResource(path, MediaTypeNames.Image.Jpeg);
            Img.ContentId = "MyImage";

            string str = @"
                <table width='100%'>  <tr><td><h1>Welcome to FoodSpot</h1></td></tr>
                      <tr>  <td align=""center"" style=""padding:40px 0 30px 0;""> 
                          <a href='https://www.swiggy.com/'>
                          <img src=cid:MyImage  id='img' alt='' width=""840px"" height=""300px""/>  </a>  </td> 
                     </tr>
                      <tr>  
                          <td><h1>HI , '"+itemProp_Obj.Cust_Name+ "' </h1>\n <h3> Your OTP is  </h3>\n'"+ getRandomText()+"' "+ @"'</h5>
                          </td>
                      </tr>  
               </table> 
               ";
            AlternateView AV = AlternateView.CreateAlternateViewFromString(str, null, MediaTypeNames.Text.Html);
            AV.LinkedResources.Add(Img);
            return AV;
        }
        public string getRandomText()
        {
            string randomtext = "";
            string alphabets = "0123456789";

            Random r = new Random();
            for (int i = 1; i <= 6; i++)
            {
                randomtext += alphabets[r.Next(alphabets.Length)];
            }
            return randomtext;
        }
        public void UpdateStatus()
        {
            s1.Clear();
            s1.Add("cust_id", itemProp_Obj.Cust_Id);
         string a=DB_Obj.executeprocedure(s1, "sp_BookingStatusDeliver");
       
        }




    }
}

