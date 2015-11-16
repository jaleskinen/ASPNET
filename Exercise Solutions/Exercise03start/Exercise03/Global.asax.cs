using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Exercise03
{
    public class Global : System.Web.HttpApplication
    {
        // JKE: 6) Add counter on number of page loads.
        // JKE: Add Application key - value pair as global variable in Application_OnStart event handler
        // JKE: Add 100 visitors whenever a new session is started by adding necessary event handler.
        // JKE: Show number of page loads in Index.aspx file.
        //

         public void Application_OnStart()
         {
         }

    }
}