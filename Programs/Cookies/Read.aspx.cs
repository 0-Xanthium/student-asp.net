using System;
using System.Web;

public partial class Read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["cookie"] != null)
        {
            ReadCookie();
        } 
    }

    protected void ReadCookie()
    {
            //Get the cookie name the user entered
        String strCookieName = Request.QueryString["cookie"].ToString();
            //Grab the cookie
        HttpCookie cookie = Request.Cookies[strCookieName];
            //Check to make sure the cookie exists
        if (cookie == null)
        {
            lblCookie.Text = "Cookie not found. <br><hr>";
        }
        else
        {
                //Write the cookie value
            String strCookieValue = cookie.Value.ToString();
            lblCookie.Text = "The " + strCookieName + " cookie contains: <b>" + strCookieValue + "</b><br><hr>";
        }
    } 
}