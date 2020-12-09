using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebPrograms
{
    public partial class filehandlingtowritefileandreadintotextbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileStream fw = new FileStream(Server.MapPath("file2.txt"), FileMode.Create);
            StreamWriter sw = new StreamWriter(fw);
            sw.WriteLine(txtdata.Text);
            sw.Close();
            fw.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileStream fr = new FileStream(Server.MapPath("file2.txt"), FileMode.Open);
            StreamReader sr = new StreamReader(fr);
            string line = sr.ReadLine();
            while (line != null)
            {
                txtreaddata.Text += line;
                line = sr.ReadLine();
            }
            sr.Close();
            fr.Close();
        }
    }
}