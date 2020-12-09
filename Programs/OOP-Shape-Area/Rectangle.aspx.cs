using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rectangle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnArea_Click(object sender, EventArgs e)
    {
        rect r = new rect();
        lblStatus.Text = "Area of rectangle is :" + r.calArea(Convert.ToInt32(txtLength.Text), Convert.ToInt32(txtBreadth.Text));
        txtBreadth.Text = txtLength.Text = String.Empty;
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}