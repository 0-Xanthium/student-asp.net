using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class textboxtolabel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncopy_Click(object sender, EventArgs e)
        {
            lblmessage.Text = txt1.Text;
        }
    }
}