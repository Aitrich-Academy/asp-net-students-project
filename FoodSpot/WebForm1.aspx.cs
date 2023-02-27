using BLL.Manager;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FoodSpot
{
    public partial class WebForm1 : System.Web.UI.Page
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
                    hd.Value = (mng.proper.ID).ToString();
                   // Session["idi"] = mng.proper.ID;
                    DataSet ds = new DataSet();

                    ds = mng.displaymenu1();
                    ds.Relations.Add(new DataRelation("CategoriesRelation", ds.Tables[0].Columns["Cat_Id"],ds.Tables[1].Columns["Cat_Id"]));

                    outerRep.DataSource = ds.Tables[0];
                    outerRep.DataBind();


                }
            }
        }
        protected void add_Click(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                var button = sender as Button;
                var dataListItem = button.Parent as RepeaterItem;
                var hfield = dataListItem.FindControl("hfield1") as HiddenField;
                string s1 = hfield.Value;
                mng.itemProp_Obj.Item_Id = int.Parse(s1);
                string cust = (Session["custid"]).ToString();

                Button btn = (Button)sender;
                RepeaterItem item = (RepeaterItem)btn.NamingContainer;
                TextBox textbox = (TextBox)item.FindControl("TextBox1");
                mng.bprop.Book_Quantity = int.Parse(textbox.Text);
                //textbox.Text = count.ToString();
                var res = mng.bookingquery(cust,hd.Value);
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
            RepeaterItem item= (RepeaterItem)btn.NamingContainer;
            TextBox textbox = (TextBox)item.FindControl("TextBox1");
            //Label lblCount = (Label)item.FindControl("lblCount");
            int count = int.Parse(textbox.Text) - 1;
            textbox.Text = count.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;
            TextBox textbox = (TextBox)item.FindControl("TextBox1");
            int count = int.Parse(textbox.Text) + 1;
            textbox.Text = count.ToString();
        }
        protected void outerRep_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)

            {

                DataRowView drv = e.Item.DataItem as DataRowView;

                Repeater innerRep = e.Item.FindControl("innerRep") as Repeater;

                innerRep.DataSource = drv.CreateChildView("CategoriesRelation");

                innerRep.DataBind();

            }
        }
        protected void checkout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/login.aspx");
        }
    }
}