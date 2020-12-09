using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class checkboxlistwithaddremove : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            CheckBoxList2.Items.Add(CheckBoxList1.SelectedItem);
        }

        protected void btnremove_Click(object sender, EventArgs e)
        {
            CheckBoxList2.Items.Remove(CheckBoxList2.SelectedItem);
        }
    }
}