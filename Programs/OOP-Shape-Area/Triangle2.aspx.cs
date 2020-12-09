using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Triangle2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnArea_Click(object sender, EventArgs e)
    {
        Triangle t = new Triangle();
        lblStatus.Text = "Area of triangle is :" + t.calArea(Convert.ToInt32(txtBase.Text), Convert.ToInt32(txtHeight.Text));
        txtBase.Text = txtHeight.Text = String.Empty;
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}