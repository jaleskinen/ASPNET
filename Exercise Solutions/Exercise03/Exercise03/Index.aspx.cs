using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise03
{
    public partial class Index : System.Web.UI.Page
    {
        //
        // JKE 1) Add event handlers to Page_Init event
        // JKE: Write out you have received page init event.
        //
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("<p>Page Init event handler</p>");
        }

        //
        // JKE 2) Add event handlers to Page_InitComplete event
        // JKE: Write out you have received page init complete event.
        //
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            Response.Write("<p>Page InitComplete event handler</p>");
        }

        //
        // JKE 3) Add event handlers to Page_PreLoad event
        // JKE: Write out you have received page preload complete event.
        //
        protected void Page_PreLoad(object sender, EventArgs e)
        {
            Response.Write("<p>Page PreLoad event handler</p>");
        }

        //
        // JKE 4) Add event handlers to Page_Load event
        // JKE: Write out you have received page load event.
        //
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<p>Page Load event handler</p>");
        }

        //
        // JKE 5) Add event handlers to Page_LoadComplete event
        // JKE: Write out you have received page load event.
        //

        // JKE: 6) Add counter on number of page loads.
        // JKE: Add Application key - value pair as global variable in Global.asax.cs file.
        // JKE: increase application's visitor numbers by one each time this event handler is triggered.
        // JKE: Test by reloading the web page
        //
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Response.Write("<p>Page LoadComplete event handler</p>");
            Application["MyVisitors"] = (int)Application["MyVisitors"] + 1;
            Response.Write("<p>My Visitor count is "+ Application["MyVisitors"].ToString() + "</p>");
        }


    }
}