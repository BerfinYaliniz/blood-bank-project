using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonorListByGroup_A_positive : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            RegistrationDAO registerDAO = new RegistrationDAO();
            APositiveGrid.DataSource = registerDAO.ShowListByBloodGroup("A+");
            APositiveGrid.DataBind();
        }
    }
}