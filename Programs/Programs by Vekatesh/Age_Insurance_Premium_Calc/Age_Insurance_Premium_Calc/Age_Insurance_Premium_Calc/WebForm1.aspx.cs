using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Age_Insurance_Premium_Calc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            lblPlan.Text = "";

            if(Convert.ToInt32(txtAge.Text)<=25)
            {
                lblPlan.Text = "Premium is 12,000/annum";
            }
            if (Convert.ToInt32(txtAge.Text) > 25 && Convert.ToInt32(txtAge.Text) <= 45)
            {
                lblPlan.Text = "Premium is 25,000/annum";
            }
            if(Convert.ToInt32(txtAge.Text) > 45)
            {
                lblPlan.Text = "No Plans";
            }
        }
    }
}