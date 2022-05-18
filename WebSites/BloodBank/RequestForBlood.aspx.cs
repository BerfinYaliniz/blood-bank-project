using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestForBlood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        InsertRequestDAO insertRequestDao = new InsertRequestDAO();

        string Name = NameText.Text;
        string Contact = ContactText.Text;
        string BloodRequest = BRDropDown.Text;
        string Amount = AmountText.Text;
        string Location = LocationText.Text;
        string Email = EmailText.Text;
        string Password = PasswordText.Text;

        //image insert in a folder and database
        //int length = BRImageUpload.PostedFile.ContentLength;
        //byte[] pic = new byte[length];

        //BRImageUpload.PostedFile.InputStream.Read(pic, 0, length);

        
        string image = InsertImage();

        insertRequestDao.InsertRequest(new InsertRequestDTO(Name, Contact, BloodRequest, Amount, Location, Email, Password, image));
        Response.Write("Your Registration is Successful");
        Response.Redirect("Request_Pages/BloodRequestList.aspx");
    }

    public string InsertImage()
    {
        
        string filename = Path.GetFileName(BRImageUpload.PostedFile.FileName);
        BRImageUpload.SaveAs(Server.MapPath("~/BRImages/" + filename));
       // BRImage.ImageUrl = "~/BRImages" + filename;
        string name = "BRImages/" + BRImageUpload.FileName;

        return name;
    }
}