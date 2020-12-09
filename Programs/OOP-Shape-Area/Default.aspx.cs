using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rdoTriangle_CheckedChanged(object sender, EventArgs e)
    {
        Server.Transfer("Triangle2.aspx");
    }
    protected void rdoSquare_CheckedChanged(object sender, EventArgs e)
    {
        Server.Transfer("Square2.aspx");
    }
    protected void rdorect_CheckedChanged(object sender, EventArgs e)
    {
        Server.Transfer("Rectangle.aspx");
    }
}