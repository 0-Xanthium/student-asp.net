using System;
using System.Web;

public partial class NextPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //verify that user is validated(logged in user)
        if (Session["aks"] != null) { 
            //use cookies
            HttpCookie cookie = Request.Cookies["abc"];
            if (cookie != null){
                lblUserName.Text = "Welcome " + cookie.Value;
                //lblUserName.Text = "Welcome " + Session["aks"];
            }
            else{
                lblUserName.Text = "Cookie not found";
            }
        }
        else{ //if not logged in then redirect to login page with a message
            Response.Redirect("~/Default.aspx?qsm=Direct access not allowed");
        }

    }
}