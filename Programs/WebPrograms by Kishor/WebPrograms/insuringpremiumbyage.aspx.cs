using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class insuringpremiumbyage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpremium_Click(object sender, EventArgs e)
        {
            int age = Convert.ToInt32(txtage.Text);
            
            if (age < 25)
            {
                lblresult.Text = (12000).ToString();
            }
            else if (age > 25 && age < 45)
            {
                lblresult.Text = (25000).ToString();
            }
        }
    }
}