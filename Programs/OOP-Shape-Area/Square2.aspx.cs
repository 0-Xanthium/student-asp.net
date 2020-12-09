using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Square2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Squ s = new Squ();
        //blstatus.Text = s.calArea(4).ToString();
    }
    protected void btnarea_Click(object sender, EventArgs e)
    {
        Squ s = new Squ();
        lblstatus.Text = "Area of Square is =" + s.calArea(Convert.ToInt32(txtside.Text)).ToString() ;
        txtside.Text = "";
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}