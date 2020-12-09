using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class sumoftwonumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtnum1.Text);
            int num2 = Convert.ToInt32(txtnum2.Text);
            lblresult.Text = (num1+num2).ToString();
        }
    }
}