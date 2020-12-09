using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateProfileData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Profile.IsAnonymous == false)
            {
                txtfname.Text = Profile.firstname;
                txtlname.Text = Profile.lastname;
                txtphoneno.Text = Profile.phoneno.ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Profile != null)
        {
            Profile.firstname = txtfname.Text;
            Profile.lastname = txtlname.Text;
            Profile.phoneno = Convert.ToInt64(txtphoneno.Text);
        }
        Response.Redirect("~/RetrivingProfileData.aspx");
    }
}