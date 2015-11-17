using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise05
{
    public partial class Index : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {


            if (DropDownList1.SelectedItem != null)
                //ageSelected = DropDownList1.SelectedItem.Value;
                Session["ageSelected"] = DropDownList1.SelectedItem.Value;

            DropDownList1.DataSource = Enumerable.Range(0, 100).ToList();
            DropDownList1.DataBind();

        }


        // JKE 1) Add event handler to button
        // JKE: Write out to first label if element is correctly set
        // JKE: Write out to second element if element is incorrectly set. this text shouldf be red (use CSS)
        //


        protected void Button1_Click(object sender, EventArgs e)
        {


            if (TextBox1.Text != "")
            {
                Label1.Text = "Hello " + TextBox1.Text + ", Your age is " + Session["ageSelected"] + ".";
                Label2.Text = "";
            }
            else
            {
                Label2.Text = "Information is missing!";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != "")
            {
                Session["Name"] = TextBox1.Text;
                Session["Age"] = Session["ageSelected"];
                Response.Redirect("./index2.aspx");
            }
            else
            {
                Label2.Text = "Information is missing!";
            }
  

        }



    }
}