using System;
using BLL;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.Manager;

namespace FoodSpot
{
    public partial class Menu : System.Web.UI.Page
    {
        MenuManager mng = new MenuManager();
        LoginManager lmg = new LoginManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"].ToString();
                if (id != null)
                {
                    mng.proper.ID = int.Parse(id);
                    DataList2.DataSource = mng.displaymenu();
                    DataList2.DataBind();
                    
                }
            }
        }
       

        protected void add_Click(object sender, EventArgs e)
        {


          
               
            if (Session["User"] != null)
            {
                var button = sender as Button;
                var dataListItem = button.Parent as DataListItem;
                var hfield = dataListItem.FindControl("hfield1") as HiddenField;
                string s1 = hfield.Value;
                mng.itemProp_Obj.Item_Id = int.Parse(s1);
                string cust = (Session["custid"]).ToString();

                Button btn = (Button)sender;
                DataListItem item = (DataListItem)btn.NamingContainer;
                TextBox textbox = (TextBox)item.FindControl("TextBox1");
                mng.bprop.Book_Quantity = int.Parse(textbox.Text);
                //textbox.Text = count.ToString();
                var res=mng.bookingquery(cust);
                //mng.bprop.Book_Quantity=
            }


            else
            {
                Response.Redirect("~/Login/login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;
            TextBox textbox = (TextBox)item.FindControl("TextBox1");
            //Label lblCount = (Label)item.FindControl("lblCount");
            int count = int.Parse(textbox.Text) - 1;
            textbox.Text = count.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;
            TextBox textbox = (TextBox)item.FindControl("TextBox1");
            int count = int.Parse(textbox.Text) + 1;
            textbox.Text = count.ToString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           

            foreach (DataListItem item in DataList2.Items)
            {
                TextBox textbox = (TextBox)item.FindControl("TextBox1");
                textbox.Text = "1";                
            }
        }

        protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            TextBox tbAmount = (TextBox)e.Item.FindControl("TextBox1");
            tbAmount.Text = "1";
        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
       
}
