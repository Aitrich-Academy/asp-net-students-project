﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodSpot.Restaurant
{
    public partial class Restaurant : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnk2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/login.aspx");
        }
    }
}