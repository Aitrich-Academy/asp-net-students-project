using BLL.Property;
using project;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.USER
{
   public class UserRegManager
   {
        private DBhelper Db_Obj = new DBhelper();
        public UserRegProperty UsrRegPro_Obj = new UserRegProperty();
        private SortedList S1 = new SortedList();

        public string StudentInsert()
        {
            S1.Clear();
            S1.Add("name", UsrRegPro_Obj.Cust_Name);
            S1.Add("email_id", UsrRegPro_Obj.Cust_Email);
            S1.Add("phone_no", UsrRegPro_Obj.Phone_Number);
            S1.Add("address", UsrRegPro_Obj.Address);
            S1.Add("picode", UsrRegPro_Obj.Pin_Code);
            S1.Add("password", UsrRegPro_Obj.Cust_Password);
            return Db_Obj.executeprocedure(S1, "User_insert");
        }
        public List<UserRegProperty> SellectAllUser()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectreguser");
            List<UserRegProperty> _list = new List<UserRegProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new UserRegProperty
                {
                    Cust_Id = Convert.ToInt32(dr["Cust_Id"]),
                    Cust_Name = dr["Cust_Name"].ToString(),
                    Phone_Number = dr["Phone_Number"].ToString(),
                    Cust_Email = dr["Cust_Email"].ToString(),
                    Cust_Password = dr["Cust_Password"].ToString(),
                    Address = dr["Address"].ToString(),
                    Pin_Code = dr["Pin_Code"].ToString()
                });
            }
            return _list;
        }
        public string UserUpdate()
        {
            S1.Clear();
            S1.Add("id", UsrRegPro_Obj.Cust_Id);
            S1.Add("name", UsrRegPro_Obj.Cust_Name);
            S1.Add("phone_no", UsrRegPro_Obj.Phone_Number);
            S1.Add("email_id", UsrRegPro_Obj.Cust_Email);
            S1.Add("password", UsrRegPro_Obj.Cust_Password);
            S1.Add("address", UsrRegPro_Obj.Address);
            S1.Add("pincode", UsrRegPro_Obj.Pin_Code);
            return Db_Obj.executeprocedure(S1, "userupdate");
        }
        public void SelectUserById()
        {
            S1.Clear();
            S1.Add("id", UsrRegPro_Obj.Cust_Id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectuserbyid");
            if (dt.Rows.Count > 0)
            {
                UsrRegPro_Obj.Cust_Name = dt.Rows[0].ItemArray[0].ToString();
                UsrRegPro_Obj.Phone_Number = dt.Rows[0].ItemArray[1].ToString();
                UsrRegPro_Obj.Cust_Email = dt.Rows[0].ItemArray[2].ToString();
                UsrRegPro_Obj.Cust_Password = dt.Rows[0].ItemArray[3].ToString();
                UsrRegPro_Obj.Address = dt.Rows[0].ItemArray[4].ToString();
                UsrRegPro_Obj.Pin_Code = dt.Rows[0].ItemArray[5].ToString();
            }
        }
        public string StudentDelete()
        {
            S1.Clear();
            S1.Add("id", UsrRegPro_Obj.Cust_Id);
            return Db_Obj.executeprocedure(S1, "studentdelete");
        }

   }
}
