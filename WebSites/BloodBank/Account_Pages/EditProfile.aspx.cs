using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Pages_EditProfile : System.Web.UI.Page
{
    RegistrationDAO registrationDao = new RegistrationDAO();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        string LoggedInemail = Session["Email"].ToString();
       

        if (!Page.IsPostBack)
        {     
              DataSet ds = registrationDao.ShowDataForEditing(LoggedInemail);
              int DonorID= Convert.ToInt32(ds.Tables[0].Rows[0]["DonorID"].ToString());
              string name = ds.Tables[0].Rows[0]["Name"].ToString();
              string email = ds.Tables[0].Rows[0]["Email"].ToString();
              string district = ds.Tables[0].Rows[0]["District"].ToString();
              string bloodgroup = ds.Tables[0].Rows[0]["BloodGroup"].ToString();
              string contact = ds.Tables[0].Rows[0]["ContactNo"].ToString();

              Session["ID"] = DonorID;
           // NewBox.Text = Session["ID"].ToString();

            NameBox.Text = name;
              EmailBox.Text = email;
              DisctrictList.Text = district;
              BBList.Text = bloodgroup;
              ContactBox.Text = contact;
            

            //data from donor details
            DataSet detailsDS = registrationDao.ShowDataFromDonorDetails(DonorID);
            string address = detailsDS.Tables[0].Rows[0]["Address"].ToString();
            string gender = detailsDS.Tables[0].Rows[0]["Gender"].ToString();
            string weight = detailsDS.Tables[0].Rows[0]["Weight"].ToString();
            string height = detailsDS.Tables[0].Rows[0]["Height"].ToString();
            string smoker = detailsDS.Tables[0].Rows[0]["Smoker"].ToString();
            string addict = detailsDS.Tables[0].Rows[0]["Addict"].ToString();
            string birthday = detailsDS.Tables[0].Rows[0]["DateofBirth"].ToString();
            string status = detailsDS.Tables[0].Rows[0]["DonationStatus"].ToString();
            string bio = detailsDS.Tables[0].Rows[0]["Bio"].ToString();
           

            AddressBox.Text = address;
            GenderRadio.SelectedValue = gender;
            WeightBox.Text = weight;
            HeightBox.Text = height;
            SmokerList.SelectedValue = smoker;
            AddictList.SelectedValue = addict;
            BirthdayBox.Text = birthday;
            StatusRadio.SelectedValue = status;
            BioBox.Text = bio;
        }

    }
    protected void deleteButton_Click(object sender, EventArgs e)
    {


    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        string name=NameBox.Text;
        string email=EmailBox.Text;
        string district= DisctrictList.Text;
        string bloodgroup=BBList.Text;
        string contact=ContactBox.Text;

        //NewBox.Text = Session["ID"].ToString();
        int DonorID = Convert.ToInt32(Session["ID"].ToString());


        string address=AddressBox.Text;
        string gender=GenderRadio.SelectedValue;
        string weight= WeightBox.Text;
        //float height= float.Parse(HeightBox.Text);
       string height= HeightBox.Text;
        string smoker = SmokerList.SelectedValue;
        string addict= AddictList.SelectedValue ;
        string birthday= BirthdayBox.Text;
        string status= StatusRadio.SelectedValue ;
        string bio= BioBox.Text ;

        registrationDao.UpdateAllInfo(new RegistrationDTO(DonorID, name,email,district,bloodgroup,contact)
                                     , new DonorDetailsDTO(DonorID, address,gender,weight,height,smoker,addict, birthday, status, bio));

        Session["Email"]=Session["Email"].ToString();
    }
}