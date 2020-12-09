using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class Welcomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HttpCookie cookie = Request.Cookies["userinfo"];
            lblmessage.Text = "you are logged in as " + Session["username"];      //cookie["username"];
        }
    }
}