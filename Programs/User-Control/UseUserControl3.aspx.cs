using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UseUserControl3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //phUserInfoBox.Controls.Add(LoadControl("~/UserInfoBoxControl.ascx"));

        UserInfoBoxControl userInfoBoxControl = (UserInfoBoxControl)LoadControl("~/UserInfoBoxControl.ascx");
        userInfoBoxControl.UserName = "MD";
        userInfoBoxControl.UserAge = 33;
        userInfoBoxControl.UserCountry = "India";
        phUserInfoBox.Controls.Add(userInfoBoxControl);
    }
}