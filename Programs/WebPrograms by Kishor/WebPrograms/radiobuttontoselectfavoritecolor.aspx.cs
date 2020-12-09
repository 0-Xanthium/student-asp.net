using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class radiobuttontoselectfavoritecolor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                lblmessage.Text = RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                lblmessage.Text = RadioButton2.Text;
            }
            else
            {
                lblmessage.Text = RadioButton3.Text;
            }
        }
    }
}