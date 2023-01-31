using BLL.ADMIN.MANAGER;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodSpot.ADMIN
{
    public partial class AddRestaurant : System.Web.UI.Page
    {
        ViewRestaurant obj = new ViewRestaurant();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    hd_value.Value =Request.QueryString["id"].ToString();
                    SelectDetails();
                }
                lbl_message.Visible = false;
            }
        }
        public void SelectDetails()
        {
            obj.prop.ID =int.Parse(hd_value.Value);
            obj.SelectById();
            txt_name.Text=obj.prop.Name;
            txt_phone.Text = obj.prop.phone;
            txt_mail.Text = obj.prop.email;
            txt_location.Text=obj.prop.location;
            txt_time.Text = obj.prop.AvTime;
            txt_password.Text = obj.prop.password;
            txt_address.Text = obj.prop.Address;
            txt_description.Text = obj.prop.Description;

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            try
            {
                if (hd_value.Value == "")
                {
                    obj.prop.Name = txt_name.Text.Trim();
                    obj.prop.phone = txt_phone.Text.Trim();
                    obj.prop.email = txt_mail.Text.Trim();
                    obj.prop.location = txt_location.Text.Trim();
                    obj.prop.AvTime = txt_time.Text.Trim();
                    obj.prop.password = txt_password.Text.Trim();
                    obj.prop.Address = txt_address.Text.Trim();
                    obj.prop.Description = txt_description.Text.Trim();

                    string result = obj.InsertRestaurant();

                    if (result == "Success")
                    {
                        lbl_message.Visible = true;
                        lbl_message.Text = "Add Successfully !!!!";
                    }
                    else
                        lbl_message.Visible = false;
                }
                else
                {
                    obj.prop.ID = int.Parse(hd_value.Value);
                    obj.prop.Name = txt_name.Text.Trim();
                    obj.prop.phone = txt_phone.Text.Trim();
                    obj.prop.email = txt_mail.Text.Trim();
                    obj.prop.location = txt_location.Text.Trim();
                    obj.prop.AvTime = txt_time.Text.Trim();
                    obj.prop.password = txt_password.Text.Trim();
                    obj.prop.Address = txt_address.Text.Trim();
                    obj.prop.Description = txt_description.Text.Trim();

                    string result = obj.UpdateRestaurant();

                    if (result == "Success")
                    {
                        lbl_message.Visible = true;
                        lbl_message.Text = "Update Successfully !!!!";
                    }
                    else
                        lbl_message.Visible = false;
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void btn_clear_Click(object sender, EventArgs e)
        {
            txt_name.Text = "";
            txt_phone.Text = "";
            txt_mail.Text = "";
            txt_location.Text = "";
            txt_time.Text = "";
            txt_password.Text = "";
            txt_address.Text = "";
            txt_description.Text = "";

            lbl_message.Visible = false;
        }
    }
}