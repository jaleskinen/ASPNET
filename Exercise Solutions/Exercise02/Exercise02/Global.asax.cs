using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Exercise02
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            //
            // JKE: 7) Application object is intended for application's own internal (server side) use
            // JKE: Create a Application key as "abcd" and store into it value 1234 if no value is previously stored
            //
            if (Application["abcd"] != null)
            {
            }
            else
            {
                Application["abcd"] = 1234;
            }

        }
    }
}