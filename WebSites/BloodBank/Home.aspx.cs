using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    bool AdminFlag = false;
    protected void Page_Load(object sender, EventArgs e)
    {   
        if (Session["Admin"] != null )
        {
            Panel3.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;      
        }
        else if (Session["New"] != null)
        {
            WelcomeLabel.Text += "\n" + Session["New"].ToString();
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }    
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        RegistrationDAO registrationDAO = new RegistrationDAO();

        string LoginEmail = LoginEmailText.Text;
        string LoginPassword = LoginPassText.Text;

        int temp = registrationDAO.CheckExistingMember(LoginEmail);

        if (temp == 1)
        {
            //user exists
            string DBPassword = registrationDAO.CheckLogin(LoginEmail);

           

            if (LoginPassword == DBPassword)
            {
                if (LoginEmail == "Admin")
                {
                    Session["Admin"] = "Admin";
                    Panel3.Visible = true;
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    // Response.Write("Password is correct");
                }
                else
                {
                    Session["New"] = registrationDAO.GetNameAfterLogin(LoginEmail);
                    Session["Email"] = LoginEmail;
                    Session["Password"] = LoginPassword;

                    Session["ID"] = registrationDAO.GetIDAfterLogin(LoginEmail);
                    //Response.Write("Password is correct");
                    //Response.Redirect("Account_Pages/Profile.aspx");
                    Response.Redirect("Home.aspx");
                }
                
            }
            else
            {
                PassLabel.Text = "Password is incorrect";
                //Response.Write("Password is incorrect");
            }


        }
    }

    protected void LogOutButton_Click(object sender, EventArgs e)
    {   
        Session["New"] = null;
        Response.Redirect("Home.aspx");
    }

    protected void AdminLogout_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("Home.aspx");
    }

    protected void SeeRequestButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPages/AdminPage.aspx");
    }


    protected void DonorButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPages/AdminViewDonorsList.aspx");
    }
}