﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise05
{
    public partial class Index2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = Session["Name"] + " " + Session["Age"];
        }

        protected void Button3_Click(object sender, EventArgs e)
        {



            Response.Redirect("./index.aspx");

        }
    }
}