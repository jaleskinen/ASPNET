﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Exercise05
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        { 
        }

        public void Session_OnStart()
        {
            Session["ageSelected"] = 0;
        }

    }
}