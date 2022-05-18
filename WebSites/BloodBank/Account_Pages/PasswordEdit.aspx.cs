using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Pages_PasswordEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        //string OldPassword=Session["Password"];
        RegistrationDAO registrationDAO = new RegistrationDAO();
       
        string OldPassword = Session["Password"].ToString();
        string checkOldPass = OldPassBox.Text;
        string newPassword = NewPassBox.Text;
        string retypePassword = ReTypePassBox.Text;
       

        if (OldPassword == checkOldPass && newPassword== retypePassword)
        {
            string email = Session["Email"].ToString();
            registrationDAO.UpdatePassword(new RegistrationDTO(email, newPassword));
            //Response.Write("Password changed successfully");
            ResponseLabel.Text = "Password changed successfully";
        }

        Session["Email"] = Session["Email"].ToString();
    }
}