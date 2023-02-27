using BLL.cart.CartManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodSpot.cart
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        CartManager Cart_Obj = new CartManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
               
                GridBind();
            }
        }

        protected void HiddenField1_ValueChanged(object sender, EventArgs e)
        {

        }
        public void GridBind()
        {
            Cart_Obj.CartPro_Obj.Cust_Id = int.Parse(Session["UserId"].ToString());
            GridView1.DataSource = Cart_Obj.SellectAllCart();
            GridView1.DataBind();
        }
        public void Cartdelete()
        {
            Cart_Obj.CartPro_Obj.Item_Id = int.Parse(HiddenField1.Value);
            string result = Cart_Obj.CartDelete();
            HiddenField1.Value = "-1";
            if (result == "Success")
            {
                Label2msg0.Text = "Successully Deleted";
            }
            GridBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            int grandtot = 0;
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int qty = int.Parse(e.Row.Cells[3].Text);
                int price = int.Parse(e.Row.Cells[4].Text);

                int total = qty * price;
                Label lbl = (Label)e.Row.FindControl("lbltotal");
                lbl.Text = total.ToString();

                grandtot += int.Parse(lbl.Text);

            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                (e.Row.FindControl("lblgrandtotal") as Label).Text = grandtot.ToString();
            }
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow gvr = btn.NamingContainer as GridViewRow;
            HiddenField1.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            Cartdelete();
        }
    }
}