﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodSpot.ADMIN
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Login/login.aspx");
        }
        
    }
}