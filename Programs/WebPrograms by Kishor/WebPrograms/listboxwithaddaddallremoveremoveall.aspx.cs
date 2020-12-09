using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPrograms
{
    public partial class listboxwithaddaddallremoveremoveall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Add(ListBox1.SelectedItem);
            ListBox1.Items.Remove(ListBox1.SelectedItem);
        }

        protected void btnaddall_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                ListBox2.Items.Add(ListBox1.Items[i].ToString());
            }
           
        }

        protected void btnremove_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Remove(ListBox2.SelectedItem);
        }

        protected void btnremoveall_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < ListBox2.Items.Count; i++)
            {
                ListBox1.Items.Add(ListBox2.Items[i].ToString());
            }
            ListBox2.Items.Clear();
        }
    }
}