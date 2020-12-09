using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AddRemove_Elements_CheckBoxList
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            int items = chk1.Items.Count - 1;

            for (int i = items; i >= 0; i--)
            {
                if(chk1.Items[i].Selected==true)
                {
                    chk2.Items.Add(chk1.Items[i]);
                    chk2.ClearSelection();
                    chk1.Items.Remove(chk1.Items[i]);
                }
            }
        }

        protected void b2_Click(object sender, EventArgs e)
        {
            int items = chk2.Items.Count - 1;

            for (int i = chk2.Items.Count - 1; i >= 0; i--)
            {
                if (chk2.Items[i].Selected == true)
                {
                    chk1.Items.Add(chk2.Items[i]);
                    chk1.ClearSelection();
                    chk2.Items.Remove(chk2.Items[i]);
                }
            }
        }
    }
}