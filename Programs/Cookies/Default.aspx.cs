using System;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lnkRead.Visible = true;
            lnkRead.NavigateUrl = "Read.aspx?cookie=" + NameField.Text.ToString();
        }
    }
     protected void WriteClicked(Object Sender, EventArgs e)
     {
            //Create a new cookie, passing the name into the constructor
         HttpCookie cookie = new HttpCookie(NameField.Text);
            //Set the cookies value
         cookie.Value = ValueField.Text;
            //Set the cookie to expire in 1 minute
         DateTime dtNow = DateTime.Now;
         TimeSpan tsMinute = new TimeSpan(0, 0, 1, 0);
         cookie.Expires = dtNow + tsMinute;
             //Add the cookie
         Response.Cookies.Add(cookie);
         Response.Write("Cookie written. <br><hr>");
     }}