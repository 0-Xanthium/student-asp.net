using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addingdataintoprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Profile.IsAnonymous==false)
        {
            Profile.firstname = txtfname.Text;
            Profile.lastname = txtlname.Text;
            Profile.phoneno = Convert.ToInt64(txtphoneno.Text);
        }

    }
}