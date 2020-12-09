using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UseUserControl2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // These values can come from anywhere, but right now, we just hardcode them

        MyUserInfoBoxControl.UserName = "Madhavendra Dutt";
        MyUserInfoBoxControl.UserAge = 22;
        MyUserInfoBoxControl.UserCountry = "India";
    }
}