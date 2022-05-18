using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Request_Pages_AddNewRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        InsertRequestDAO insertRequestDao = new InsertRequestDAO();
        
        string RequiredGroup = BRDropDown.Text;
        string Amount = AmountText.Text;
        string Location = LocationText.Text;
        string image = InsertImage();
        string Email = Session["Requester"].ToString();

        


        RequestStatusDAO rsDAO = new RequestStatusDAO();
        rsDAO.InsertNewRequest(new InsertRequestDTO( Email, RequiredGroup, Amount, Location,image));
        Response.Write("Your Registration is Successful");
        Response.Redirect("EditRequest.aspx");
    }

    public string InsertImage()
    {

        string filename = Path.GetFileName(BRImageUpload.PostedFile.FileName);
        BRImageUpload.SaveAs(Server.MapPath("~/BRImages/" + filename));
        string name = "BRImages/" + BRImageUpload.FileName;

        return name;
    }
}