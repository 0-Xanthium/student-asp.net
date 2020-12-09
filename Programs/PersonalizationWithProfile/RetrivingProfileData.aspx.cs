using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RetrivingProfileData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Profile.IsAnonymous == false)
            {
                lblfname.Text = Profile.firstname;
                lbllname.Text = Profile.lastname;
                lblphoneno.Text = (Profile.phoneno).ToString();
            }
        }
    }
}