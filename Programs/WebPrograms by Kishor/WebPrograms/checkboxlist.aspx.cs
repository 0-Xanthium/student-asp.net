using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class checkboxlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblmessage.Text = "selected items";
            for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    lblmessage.Text += CheckBoxList1.Items[i].Text + "<br/>";
                }
            }
        }

        protected void CheckBoxList1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblmessage.Text = "selected items";
            for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    lblmessage.Text += CheckBoxList1.Items[i].Text + "<br/>";
                }
            }
        }
    }
}