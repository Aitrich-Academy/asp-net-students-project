using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using project;
using BLL.Manager;

namespace FoodSpot
{
    
    public partial class start : System.Web.UI.Page
    {
        StartManager srt = new StartManager();

        public object HiddenField1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    
                    Label1.Visible = true;
                    Label1.Text = "Welcome "+Session["Username"].ToString();
                }
                    DataList1.DataSource = srt.ListAllRestaurants();
                DataList1.DataBind();
            }
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var button = sender as LinkButton;
            var dataListItem = button.Parent as DataListItem;
            var hfield = dataListItem.FindControl("hfield") as HiddenField;
            string s1 = hfield.Value;
            srt.prop.ID = int.Parse(s1);
            Response.Redirect("menu.aspx?id=" + s1);
        }

        
    }
}