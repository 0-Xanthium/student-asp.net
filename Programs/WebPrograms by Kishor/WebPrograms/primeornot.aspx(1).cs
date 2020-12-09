using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class primeornot : System.Web.UI.Page
    {
        WebService1 ws = new WebService1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            string result = ws.primeornot(Convert.ToInt32(txtnumber.Text));
            lblresult.Text = result;
        }
    }
}