using System;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie d = Request.Cookies["user"];

        if (d != null)
        {            
            mybody.Attributes.Add("bgcolor", d["bg"].ToString());
            Response.Write("Welcome " + d["userName"].ToString());

            Label1.Visible = false;
            Label2.Visible = false;
            TextName.Visible = false;
            TextColor.Visible = false;
            Button1.Visible = false;

         }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("user") ;
        c["bg"] = TextColor.Text;
        c["userName"] = TextName.Text;
        Response.Cookies.Add(c);
    }
}