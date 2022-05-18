using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Pages_AddDonation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        string date = DateBox.Text;
        string donatedTo = DonatedList.SelectedValue;
        string recipientName = NameBox.Text;
        string recipientAddress = AddressBox.Text;
        int DonorID = Convert.ToInt32(Session["ID"].ToString());

        RecordsDAO recordsDAO = new RecordsDAO();
        recordsDAO.insertRecord(new RecordsDTO(DonorID,date, donatedTo, recipientName, recipientAddress));

        Session["Email"] = Session["Email"].ToString();

        Response.Redirect("DonationHistory.aspx");
    }
}