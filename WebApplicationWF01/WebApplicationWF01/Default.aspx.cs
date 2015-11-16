using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationWF01
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        /*
            if (Label1.Text != "Hello World!")
                Label1.Text = "Hello World!";
            else
                Label1.Text = "World Hello";
        */
            //Response.Redirect("http://www.opiframe.com");

            Label1.Text = "Server: ";
            Label1.Text += this.Server.MachineName;
            Label1.Text += " ScriptTimeout: ";
            Label1.Text += this.Server.ScriptTimeout;
            Label1.Text += " LogonUserIdentity: ";
            Label1.Text += this.Request.LogonUserIdentity;
            //Label1.Text == " ";

        }
    }
}