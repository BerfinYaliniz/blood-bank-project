using System;
using System.Collections.Generic;

public partial class DonorListByGroup_A_negative : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            RegistrationDAO registerDAO = new RegistrationDAO();
            ANegativeGrid.DataSource = registerDAO.ShowListByBloodGroup("A-");
            ANegativeGrid.DataBind();
        }
    }

    protected void ANegativeGrid_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}