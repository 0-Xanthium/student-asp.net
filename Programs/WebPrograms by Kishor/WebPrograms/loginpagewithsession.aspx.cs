using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class loginpagewithsession : System.Web.UI.Page
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
                Session["username"] = txtusername.Text;
                Response.Redirect("~/Welcomepage.aspx");
            }
            else
            {
                lblerror.Text = "Invalid Username/password!......";
            }
        }
    }
}