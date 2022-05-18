using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Pages_LoggedInMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            //WelcomeLabel.Text += "\n" + Session["New"].ToString();
        }
        else
            Response.Redirect("../Home.aspx");
    }

    protected void LogOutButton_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("../Home.aspx");
    }
}
