using BLL.ADMIN.MANAGER;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodSpot.ADMIN
{
    public partial class ListRestaurannts : System.Web.UI.Page
    {
        ViewRestaurant obj = new ViewRestaurant();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                lbl_message.Visible = false;
            }
        }
        public void BindGrid()
        {
            DataTable dt = new DataTable();
            dt = obj.SelectAllRestaurants();
            grd_Restaurants.DataSource = dt;
            grd_Restaurants.DataBind();
        }

        protected void grd_Restaurants_RowDataBound1(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chk = (CheckBox)e.Row.FindControl("chk_active");

                if (e.Row.Cells[7].Text == "D         ")
                {
                    chk.Checked = false;
                }
                else
                {
                    e.Row.BackColor = Color.LightGray;
                    chk.Checked = true;
                    chk.Enabled = false;
                }

            }
        }

        protected void ImgEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            int id = Convert.ToInt32(grd_Restaurants.DataKeys[gvr.RowIndex].Value);

            Response.Redirect("AddRestaurant.aspx?id=" + id);

        }


        protected void ImgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow dr = imgbtn.NamingContainer as GridViewRow;

            int id = Convert.ToInt32(grd_Restaurants.DataKeys[dr.RowIndex].Value);
            DeleteOne(id);
            BindGrid();
        }
        public void DeleteOne(int id)
        {
            obj.prop.ID = id;
            string result = obj.DeleteRestaurant();
        }

        protected void chk_active_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chk = (CheckBox)sender;
            GridViewRow dr = chk.NamingContainer as GridViewRow;

            int id = Convert.ToInt32(grd_Restaurants.DataKeys[dr.RowIndex].Value);

            obj.prop.ID = id;
            obj.SelectMailReceiv();

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress("anshid.ansar@gmail.com");
                mail.To.Add(obj.prop.email);
                mail.Subject = "Food Spot";
                mail.Body = "<h1>Welcome to FoodSpot</h1>\n<h3>Hai " + obj.prop.Name + "  </h3>\n<h5>Your account is activated.Your password is " + obj.prop.password + "</h5>";
                mail.IsBodyHtml = true;
                // mail.Attachments.Add(new Attachment("C:\\file.zip"));

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.Credentials = new NetworkCredential("anshidansar007", "ngvrpntimlvnmgik");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }

            }

            string stat = obj.UpdateStatus();
            lbl_message.Visible = true;
            lbl_message.Text = "Mail sent to " + obj.prop.Name;
            BindGrid();
        }


    }
}