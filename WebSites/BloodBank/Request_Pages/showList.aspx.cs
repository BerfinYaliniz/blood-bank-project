using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Request_Pages_showList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  
            AllListPanel.Visible = true;
            SearchedPanel.Visible = false;
    }

    protected void ResetButton_Click(object sender, EventArgs e)
    {
        AllListPanel.Visible = true;
        SearchedPanel.Visible = false;
        DistrictList.ClearSelection();
        BRDropDown.ClearSelection();
        StatusList.ClearSelection();
    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        AllListPanel.Visible = false;
        SearchedPanel.Visible = true;
    }
}