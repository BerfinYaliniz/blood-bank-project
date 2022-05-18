using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Pages_DonationHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            int DonorID = Convert.ToInt32(Session["ID"].ToString());
            RecordsDAO recordsDAO = new RecordsDAO();
            DonationGrid.DataSource = recordsDAO.ShowList(DonorID);
            DonationGrid.DataBind();
        }
    }
}