using BLL.ADMIN.MANAGER;
using System;
using System.Collections.Generic;
using System.Linq;
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
            if(!IsPostBack)
            {
                BindGrid();
            }
        }
        public void BindGrid()
        {
            grd_Restaurants.DataSource = obj.SelectAllRestaurants();
            grd_Restaurants.DataBind();
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
    }
}