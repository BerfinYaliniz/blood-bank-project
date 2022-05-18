using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditRequest : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Requester"] != null)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            showStatus();

            string status = StatusGrid.Rows[0].Cells[1].Text;
           

            //date calculation
            string savedDate = StatusGrid.Rows[0].Cells[0].Text;
            DateTime sDate = Convert.ToDateTime(savedDate);
            // DateTime time = sDate.AddMinutes(+5);
           // TextBox1.Text = sDate.ToString();

            DateTime eDate = sDate.AddDays(+7);
            string expiryDate = eDate.ToString("dd-MM-yyyy");
           

            string presentDate = System.DateTime.Now.ToString("dd-MM-yyyy");
            DateTime pDate = System.DateTime.Now;

            if (status == "Approved" && pDate < eDate)
             {
                    ListShowPanel.Visible = true;
             }
            else
            {
                ListShowPanel.Visible = false;
            }
            
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }

    void showStatus()
    {
        if (!Page.IsPostBack)
        {
            
            InsertRequestDAO requestDAO = new InsertRequestDAO();
            StatusGrid.DataSource = requestDAO.ShowRequestList(Session["Requester"].ToString());
            StatusGrid.DataBind();
           
           
        }
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        InsertRequestDAO insertDAO = new InsertRequestDAO();

        string LoginEmail = LoginEmailText.Text;
        string LoginPassword = LoginPassText.Text;

        int temp = insertDAO.CheckExistingMember(LoginEmail);

        if (temp == 1)
        {
            //user exists
            string DBPassword = insertDAO.CheckLogin(LoginEmail);

            if (LoginPassword == DBPassword)
            {
                Session["Requester"] = LoginEmail;
                Response.Redirect("EditRequest.aspx");
            }
            else
                Response.Write("Password is incorrect");

        }
    }


    protected void LogOutButton_Click(object sender, EventArgs e)
    {
        Session["Requester"] = null;
        Response.Redirect("EditRequest.aspx");
    }

    protected void ShowButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("showList.aspx");
    }



    protected void AddButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNewRequest.aspx");
    }
    protected void deleteButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    
}