using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class checkboxwithboldunderlineitalics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Attributes.Add("style", "font-size:50px; color:Red; font-weight:bold;");
        }

        protected void cbunderline_CheckedChanged(object sender, EventArgs e)
        {
            if (cbunderline.Checked)
            {
                Label1.Attributes.Add("style", "font-size:50px; color:Red; font-weight:underline;");
            }
            else
            {
                Label1.Attributes.Add("style", "font-size:50px; color:Red; font-weight:normal;");
            }
        }

        protected void cbitalics_CheckedChanged(object sender, EventArgs e)
        {
            if (cbitalics.Checked)
            {
                Label1.Attributes.Add("style", "font-size:50px; color:Red; font-weight:Italic;");
            }
            else
            {
                Label1.Attributes.Add("style", "font-size:50px; color:Red; font-weight:normal;");
            }
        }

        protected void csbold_CheckedChanged(object sender, EventArgs e)
        {
            if (cbbold.Checked)
            {
                Label1.Attributes.Add("style", "font-size:50px; color:Red; font-weight:bold;");
            }
            else
            {
                Label1.Attributes.Add("style", "font-size:50px; color:Red; font-weight:normal;");
            }
        }

    }
}