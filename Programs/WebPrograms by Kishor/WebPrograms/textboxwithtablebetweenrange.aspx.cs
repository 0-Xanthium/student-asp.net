using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class textboxwithtablebetweenrange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntable_Click(object sender, EventArgs e)
        {
         
           int num1 = Convert.ToInt32(txtnum1.Text);
           int num2 = Convert.ToInt32(txtnum2.Text);
           if (num1 > 1 && num1 < 100 && num2 > 1 && num2 < 100)
           {

               for (int i = num1; i <= num2; i++)
               {
                   for (int j = 1; j <= 10; j++)
                   {
                       lblresult.Text += i + " * " + j + " = " + i * j + "<br>";
                   }
                   lblresult.Text += "<br>";
               }
           }
           else
           {
               lblresult.Text = "range must be in between 1 to 100";
           }
        }
    }
}