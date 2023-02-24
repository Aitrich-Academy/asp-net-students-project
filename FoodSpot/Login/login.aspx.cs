using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.Manager;

namespace FoodSpot.Login
{
    public partial class login : System.Web.UI.Page
    {
        LoginManager lmg = new LoginManager();
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }
        public void RoleSelect()
        {
            lmg.logpro.E_Mail = txtemail.Text.Trim().ToString();
            lmg.logpro.Password = txtpassword.Text.Trim().ToString();
            string result = lmg.Roleselect();
            lmg.logpro.log_Id = int.Parse(lmg.selectlogid());

            Session["custid"] = lmg.selectlogid();

            if (result == "U")
            {
                Session["User"] = txtemail.Text;
                
                lmg.logpro.Username = lmg.Usernameselect();
                Session["Username"] = lmg.logpro.Username;
                Response.Redirect("~/start.aspx");
            }
            else if (result == "R")
            {
                Session["Email"] = txtemail.Text;
                Response.Redirect("~/WebForm1.aspx");
            }
            else
            {
                label.Visible = true;
                label.Text = "User Doesn't Exist!! Please Sign Up to continue:)";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtemail.Text == "admin" && txtpassword.Text == "admin123")
            {
                Session["Email"] = txtemail.Text;

                Response.Redirect("~/ADMIN/AddRestaurant.aspx");
            }
            else
            {
                RoleSelect();
            }
        }
    }
}