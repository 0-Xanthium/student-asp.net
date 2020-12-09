using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class armstrongornot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncheck_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(txtnumber.Text);
            int num1 = num;
            int a, b, c = 0;
            while (num > 0)
            {
                a = num % 10;
                b = a * a * a;
                c = b + c;
                num = num / 10;
            }
            if (c == num1)
            {
                txtresult.Text = "It is Armstrong number";
            }
            else
            {
                txtresult.Text = "It is not Armstrong number";
            }
        }
    }
}