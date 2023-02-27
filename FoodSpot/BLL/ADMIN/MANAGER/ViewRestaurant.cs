using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;
using BLL.ADMIN.PROPERTY;
using BLL.Services;
using project;

namespace BLL.ADMIN.MANAGER
{
    public class ViewRestaurant
    {
        private DBhelper Db_Obj = new DBhelper();
        private SortedList S_List = new SortedList();
        public RestaurantProperty prop = new RestaurantProperty();

        public DataTable SelectAllRestaurants()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("sp_ListRestaurants");

            return dt;
        }
        public string DeleteRestaurant()
        {
            S_List.Clear();
            S_List.Add("Id", prop.ID);
            return Db_Obj.executeprocedure(S_List, "sp_DeleteRestaurant");
        }

        public string InsertRestaurant()
        {
            S_List.Clear();
            S_List.Add("name", prop.Name);
            S_List.Add("phone", prop.phone);
            S_List.Add("mail", prop.email);
            S_List.Add("location", prop.location);
            S_List.Add("time", prop.AvTime);
            S_List.Add("passw", prop.password);
            S_List.Add("address", prop.Address);
            S_List.Add("descript", prop.Description);

            string result = Db_Obj.executeprocedure(S_List, "sp_InsertRestaurant");
            return result;
        }

        public void SelectById()
        {
            S_List.Clear();
            S_List.Add("Id", prop.ID);


            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S_List, "sp_SelectById");
            if (dt.Rows.Count > 0)
            {
                prop.Name = dt.Rows[0].ItemArray[1].ToString();
                prop.phone = dt.Rows[0].ItemArray[2].ToString();
                prop.email = dt.Rows[0].ItemArray[3].ToString();
                prop.location = dt.Rows[0].ItemArray[4].ToString();
                prop.AvTime = dt.Rows[0].ItemArray[5].ToString();
                prop.password = dt.Rows[0].ItemArray[6].ToString();
                prop.Address = dt.Rows[0].ItemArray[7].ToString();
                prop.Description = dt.Rows[0].ItemArray[8].ToString();

            }

        }

        public string UpdateRestaurant()
        {
            S_List.Clear();
            S_List.Add("Id", prop.ID);
            S_List.Add("name", prop.Name);
            S_List.Add("phone", prop.phone);
            S_List.Add("mail", prop.email);
            S_List.Add("location", prop.location);
            S_List.Add("time", prop.AvTime);
            S_List.Add("passw", prop.password);
            S_List.Add("address", prop.Address);
            S_List.Add("descript", prop.Description);
            string result = Db_Obj.executeprocedure(S_List, "sp_UpdateRestaurant");
            return result;
        }

        public string UpdateStatus()
        {
            S_List.Clear();
            S_List.Add("id", prop.ID);
            string result = Db_Obj.executeprocedure(S_List, "sp_RestaurantStatus");
            return result;

        }
        public void FunctionForMail(string path)
        {
            MailServices emailService = new MailServices();
            emailService.MailSending(prop.email, Mail_Body(path));
        }
        private AlternateView Mail_Body(string path)
        {
            LinkedResource Img = new LinkedResource(path, MediaTypeNames.Image.Jpeg);
            Img.ContentId = "MyImage";
            string str = @"  
            <table width='100%'>  <tr><td><h1>Welcome to FoodSpot</h1></td></tr>
            <tr>  <td align=""center"" style=""padding:40px 0 30px 0;""> 
            <a href='https://www.swiggy.com/'>
            <img src=cid:MyImage  id='img' alt='' width=""840px"" height=""300px""/>  </a>  </td>   </tr>
                <tr>  
                    <td><h3>Hai  '" + prop.Name + "' </h3>\n<h5>Your account is activated.Your password is '" + prop.password + @"'</h5> 
                    </td>  
                </tr>  
               </table>  
            ";
            AlternateView AV = AlternateView.CreateAlternateViewFromString(str, null, MediaTypeNames.Text.Html);
            AV.LinkedResources.Add(Img);
            return AV;
        }
        public void SelectMailReceiv()
        {
            S_List.Clear();
            S_List.Add("id", prop.ID);
            DataTable dt = new DataTable();

            dt = Db_Obj.getdatatable(S_List, "sp_selectmailid");
            if (dt.Rows.Count > 0)
            {
                prop.Name = dt.Rows[0].ItemArray[0].ToString();
                prop.email = dt.Rows[0].ItemArray[1].ToString();
                prop.password = dt.Rows[0].ItemArray[2].ToString();

            }

        }

    }
}
