using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_ViewRequest : System.Web.UI.Page
{
    string panelSwap = "No";
    protected void Page_Load(object sender, EventArgs e)
    {

        InsertRequestDAO irDAO = new InsertRequestDAO();
        int RNO = Convert.ToInt32(RequesterDetails.Rows[7].Cells[1].Text);

        string img = irDAO.GetImageURL(RNO);
        BRImageDB.ImageUrl = "~/"+img;

           
            Panel2.Visible = true;
            Panel3.Visible = false;

    }
    protected void ApproveButton_Click(object sender, EventArgs e)
    {
        saveStatus("Approved");
        Panel2.Visible = false;
        Panel3.Visible = true;

    }

    protected void DisapproveButton_Click(object sender, EventArgs e)
    {
        saveStatus("Disapproved");
        Panel2.Visible = false;
        Panel3.Visible = true;
    }


    private void saveStatus(string status)
    {
        int ID = Convert.ToInt32(RequesterDetails.Rows[7].Cells[1].Text);  
        RequestStatusDAO rsDAO = new RequestStatusDAO();
        rsDAO.UpdateStatus(new RequestStatusDTO(ID, status));
        
    }


    protected void LogoutButton_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("../Home.aspx");
    }

    protected void ListButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminPage.aspx");
    }



    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        //DELETE FROM DonorDetails FROM DonorDetails INNER JOIN Records ON DonorDetails.DonorID = Records.DonorID INNER JOIN RegisteredDonor ON DonorDetails.DonorID = RegisteredDonor.DonorID Where RegisteredDonor.DonorID = DonorID
        int RNO = Convert.ToInt32(RequesterDetails.Rows[7].Cells[1].Text);
        RequestStatusDAO rsDAO = new RequestStatusDAO();
        rsDAO.DeleteRequest(RNO);
        Response.Redirect("AdminPage.aspx");
    }
}
