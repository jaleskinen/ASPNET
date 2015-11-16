using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise02
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //
            // JKE: Add the necessary Httpcontext changing material here
            //
            
            //
            // JKE: 1) Response is the most basic way to manipulate HttpContext.
            // JKE: Write a text "Hello me!" as a HTML paragraph on page load.
            //
            Response.Write("<p>Test</p>");

            //
            // JKE: 2) Response can also include statuscode of transmission
            // JKE: Write statuscode of Response object (should be 200 if everything works out).
            //
            Response.Write("<p>StatusCode is " + Response.StatusCode + "</p>");

            //
            // JKE: 2) Request object has information concerning browser.
            // JKE: Write out your browser's (application) physical address.
            // JKE: Write out what JavaScript version your browser supports.
            // JKE: Write out if your browser has a secure connection.
            //
            Response.Write("<p>Physical address? " + Request.PhysicalApplicationPath.ToString() + "</p>");
            Response.Write("<p>Support JavaScripting? " + Request.Browser.EcmaScriptVersion.ToString() + "</p>");
            Response.Write("<p>Is this Secure connection? " + Request.IsSecureConnection.ToString() + "</p>");

            //
            // JKE: 3) Server object has information concerning server.
            // JKE: Write out server's scripting timeout value
            // JKE: Write out server's machine name
            //
            Response.Write("<p>Server's script timeout value is " + Server.ScriptTimeout.ToString() + "</p>");
            Response.Write("<p>Server is in machine named " + Server.MachineName +"</p>");

            //
            // JKE: 4) Application object has information concerning classes in currently running ASP.NET application
            // JKE: Write out application's contents
            //
            Response.Write("<p> Application object contents are " + Application.Contents + "</p>");
//            Response.Write("<p>" + + "</p>"):
//            Response.Write("<p>" + + "</p>"):

            //
            // JKE: 5) Session object has information concerning currently running session.
            // JKE: Writeout session's ID value (it is unique ID for each user)
            //
            Response.Write("<p>" + Session.SessionID + "</p>");
            
            // JKE: 6) Second use of Session object is to store information with key-value pairs.
            // JKE: Create a Session key as "abcd" and store into it value 1234 if no value is previously stored
            // JKE: Use refresh to test this feature
            //
            if (Session["abcd"] != null)
            {
                Response.Write("<p>Session key abcd holds value " + Session["abcd"].ToString() + "</p>");
            }
            else
            {
                Session["abcd"] = 1234;
            }

            // JKE: 7) Application object can be used to store global variables as key-value pairs.
            // JKE: Create a Application key as "abcd" and store into it value 1234 if no value is previously stored in Global.asax.cs
            // JKE: Use refresh to test this feature
            //
            if (Application["abcd"] != null)
            {
                Response.Write("<p>Application key abcd holds value " + Application["abcd"].ToString() + "</p>");
            }


        }
    }
}