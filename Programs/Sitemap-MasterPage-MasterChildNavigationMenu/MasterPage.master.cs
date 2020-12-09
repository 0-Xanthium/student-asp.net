using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sURL = Request.Url.ToString().ToLower();
            if (sURL.EndsWith("default.aspx"))
            {
                mnuChild.Visible = false;
            }
            else if (sURL.Contains("/products/") ||
                          sURL.Contains("/services/"))
            {
                smdsChild.StartingNodeOffset = -1;
            }
        }
    }
}
