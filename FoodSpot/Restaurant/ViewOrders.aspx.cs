using BLL.Admin.Manager;
using BLL.Admin.Property;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodSpot.Restaurant
{
    public partial class ViewOrders : System.Web.UI.Page
    {
        ItemManager itemMngr_obj = new ItemManager();
        ItemProperty itemProp_obj = new ItemProperty();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                BindGrid();
                panel1.Visible = false;
                LblItemsListHeading.Visible = false;
              //  LabelMsg.Visible = false;
                GrandTotal();
            }
        }

        void GrandTotal()
        {
            //Label lbl = sender as Label;

            int quantity = itemMngr_obj.itemProp_Obj.Book_Quantity;
            int price = itemMngr_obj.itemProp_Obj.Item_Price;
            int totalPrice = quantity * price;

            
        }

        void BindGrid()
        {
            //Session["Rest"] = "2";


            itemMngr_obj.itemProp_Obj.Rest_Id = 2;
            GridViewBookings.DataSource = itemMngr_obj.selectAllBookings();
            GridViewBookings.DataBind();
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Button btn = sender as Button;
            GridViewRow grdrow = btn.NamingContainer as GridViewRow;
            //HiddenFieldCustomerDetails.Value = Convert.ToInt32(GridViewBookings.DataKeys[grdrow.RowIndex].Values[0]).ToString();
            HiddenFieldCustomerDetails.Value = GridViewBookings.DataKeys[grdrow.RowIndex].Value.ToString();


            
            //HF_itemslist.Value = GridViewBookings.DataKeys[grdrow.RowIndex].Values[0].ToString();
            HF_itemslist.Value = GridViewBookings.DataKeys[grdrow.RowIndex].Value.ToString();

            panel1.Visible = true;

            itemMngr_obj.itemProp_Obj.Cust_Id =int.Parse(HiddenFieldCustomerDetails.Value);
            itemMngr_obj.SelectCustomerDetails();
            
            Labelname.Text = itemMngr_obj.itemProp_Obj.Cust_Name;
            LabelPhone0.Text = itemMngr_obj.itemProp_Obj.Phone_Number;
            Labelemail0 .Text = itemMngr_obj.itemProp_Obj.Cust_Email;
            Labeladress0.Text = itemMngr_obj.itemProp_Obj.Cust_Address;
            Labelpincode0.Text = itemMngr_obj.itemProp_Obj.Cust_Pincode;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

     

        protected void ViewItemsBtn_Click(object sender, EventArgs e)
        {


            Button btn = sender as Button;
            GridViewRow grdrow = btn.NamingContainer as GridViewRow;
            HF_itemslist.Value = GridViewBookings.DataKeys[grdrow.RowIndex].Value.ToString();

            itemMngr_obj.itemProp_Obj.Cust_Id =Convert.ToInt32(HF_itemslist.Value);
            itemMngr_obj.itemProp_Obj.Rest_Id = 2;
            DataTable dt = new DataTable();
            dt = itemMngr_obj.SelectItemsListing();
            LblItemsListHeading.Visible = true;
            GV_ItemListing.DataSource = dt;
            GV_ItemListing.DataBind();
        }

        int grandtot = 0;
        protected void GV_ItemListing_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int price = int.Parse(e.Row.Cells[1].Text);
                int qty = int.Parse(e.Row.Cells[2].Text);

                int total = qty * price;
           
                Label lbl = (Label)e.Row.FindControl("lbltotal");
                lbl.Text = total.ToString();

                grandtot += Convert.ToInt32(lbl.Text);
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                (e.Row.FindControl("lblgrandtotal") as Label).Text = grandtot.ToString();
            }
        }


           
        protected void btnViewDetails2_Click(object sender, EventArgs e)
        {
            itemMngr_obj.itemProp_Obj.Cust_Id = Convert.ToInt32(HF_itemslist.Value);
            itemMngr_obj.itemProp_Obj.Rest_Id = 2;
            DataTable dt = new DataTable();
            dt = itemMngr_obj.SelectItemsListing();
        
            GV_ItemListing.DataSource = dt;
            GV_ItemListing.DataBind();
        }

        

        protected void btnDeliverySubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = (Button)sender;
                GridViewRow dr = btn.NamingContainer as GridViewRow;

                //int id = Convert.ToInt32(GridViewBookings.DataKeys[dr.RowIndex].Value);

                HF_itemslist.Value = GridViewBookings.DataKeys[dr.RowIndex].Value.ToString();

                itemMngr_obj.itemProp_Obj.Cust_Id = Convert.ToInt32(HF_itemslist.Value);
                itemMngr_obj.SelectMailReceiv();


                string path = Server.MapPath(@"/Images/Rest_Image.png");
                itemMngr_obj.FunctionForMail(path);

               // LabelMsg.Visible = true;
                LabelMsg.Text = "Mail sent to " + itemProp_obj.Cust_Name;
                Session["mysession"] = itemProp_obj.Cust_Name;
                itemMngr_obj.UpdateStatus();
                 
     
            }
            catch (Exception ex)
            {
                //LabelMsg.Visible = true;
                //LabelMsg.Text = "mail send Failed";
            }
            finally
            {

                BindGrid();
            }

        }

       

          
    }
}