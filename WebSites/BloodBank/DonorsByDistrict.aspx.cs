using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonorsByDistrict : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }

    protected void ResetButton_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        DistrictList.ClearSelection();
    }
}