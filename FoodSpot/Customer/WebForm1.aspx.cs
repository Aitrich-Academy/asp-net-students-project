

using BLL.USER;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FOODSPOT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        UserRegManager UsrRegMngr_Obj = new UserRegManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                UserBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (HiddenField1.Value == "-1")
            {
                Userinsert();
            }
            else
            {
                Userupdate();
            }
        }
        public void Userinsert()
        {
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Name = TextName.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Email = TextEmail.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Phone_Number = TextNumber.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Address = TextAddress.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Pin_Code = TextPincode.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Password = TextPassword.Text.Trim().ToString();
            string result = UsrRegMngr_Obj.StudentInsert();
            TextName.Text = "";
            HiddenField1.Value = "-1";
            if (result == "Success")
            {

                LabelMsg.Visible = true;
                LabelMsg.Text = "Inserted Successfully";
                Clear();

            }
            else if (result == "Already Exist")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "alreaddy Exist";

            }
            else if (result == "Error")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "failed due to error";

            }
            else
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "failed due to some technical error";
            }
            UserBind();
        }
        public void Clear()
        {
            TextName.Text = "";
            TextEmail.Text = "";
            TextNumber.Text = "";
            TextPassword.Text = "";
            TextAddress.Text = "";
            TextPincode.Text = "";
        }
        public void UserBind()
        {
            GridView1.DataSource = UsrRegMngr_Obj.SellectAllUser();
            GridView1.DataBind();
        }
        public void Userupdate()
        {
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Id = int.Parse(HiddenField1.Value);
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Name = TextName.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Email = TextEmail.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Phone_Number = TextNumber.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Address = TextAddress.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Pin_Code = TextPincode.Text.Trim().ToString();
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Password = TextPassword.Text.Trim().ToString();
            string result = UsrRegMngr_Obj.UserUpdate();
            TextName.Text = "";
            HiddenField1.Value = "-1";

            if (result == "Success")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Successfully updated";
                Clear();
            }
            else if (result == "Error")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "failed due to some  error";
            }

            //else if (result == "Already exist")
            //{
            //    LabelMsg.Visible = true;
            //    LabelMsg.Text = "Already Exist";
            //}
            else
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "failed due to some technical error";
            }
            UserBind();
        }
        public void selectbyId()
        {
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Id = int.Parse(HiddenField1.Value);
            UsrRegMngr_Obj.SelectUserById();
            TextName.Text = UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Name;
            TextEmail.Text = UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Email;
            TextNumber.Text = UsrRegMngr_Obj.UsrRegPro_Obj.Phone_Number;
            TextPassword.Text = UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Password;
            TextAddress.Text = UsrRegMngr_Obj.UsrRegPro_Obj.Address;
            TextPincode.Text = UsrRegMngr_Obj.UsrRegPro_Obj.Pin_Code;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenField1.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            selectbyId();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imbtn = sender as ImageButton;
            GridViewRow gvr = imbtn.NamingContainer as GridViewRow;
            HiddenField1.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            Studentdelete();
        }
        public void Studentdelete()
        {
            UsrRegMngr_Obj.UsrRegPro_Obj.Cust_Id = int.Parse(HiddenField1.Value);
            string result = UsrRegMngr_Obj.StudentDelete();
            TextName.Text = "";
            HiddenField1.Value = "-1";
            if (result == "Success")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "Successfully Deleted";
            }
            else if (result == "Error")
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "failed due to some technical error";
            }
            else
            {
                LabelMsg.Visible = true;
                LabelMsg.Text = "failed due to some technical error";
            }
            UserBind();
        }
    }
}