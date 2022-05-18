using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    bool memberExists = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        RegistrationDAO registrationDao = new RegistrationDAO();
        memberExists = false;

        if (IsPostBack)
        {
            string email = EmailText.Text;

            int temp = registrationDao.CheckExistingMember(email);

            if (temp == 1)
            {
                Response.Write("User Already Exists");

                memberExists = true;
            }

        }
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
       if (memberExists == false)
        {
            RegistrationDAO registrationDao = new RegistrationDAO();

            string name = NameText.Text;
            string email = EmailText.Text;
            string password = PasswordText.Text;
            string district = DistrictList.Text;
            string bloodGroup = GroupList.Text;
            string contactNo = ContactNoText.Text;

            int DonorID=registrationDao.CreateMember(new RegistrationDTO(name, email, password, district, bloodGroup, contactNo));
            Response.Write("Your Registration is Successful");
            registrationDao.InsertDonorIDinOtherTables(DonorID);
            Response.Redirect("Home.aspx");
        }

    }

    protected void DistrictDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}