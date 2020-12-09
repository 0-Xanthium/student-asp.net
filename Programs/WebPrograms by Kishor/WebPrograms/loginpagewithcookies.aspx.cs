using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class loginpagewithcookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = "kishor";
            string password = "kishor";
            if (txtusername.Text == username && txtpassword.Text == password)
            {
                HttpCookie cookie=new HttpCookie("userinfo");
                cookie["username"] = txtusername.Text;
                Response.Cookies.Add(cookie);
                Response.Redirect("~/Welcomepage.aspx");
            }
            else
            {
                lblerror.Text = "Invalid Username/password!......";
            }
        }
    }
}