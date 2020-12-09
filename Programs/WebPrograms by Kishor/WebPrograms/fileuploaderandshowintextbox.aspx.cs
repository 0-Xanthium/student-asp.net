using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebPrograms
{
    public partial class fileuploaderandshowintextbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnshowdata_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Upload/" + FileUpload1.FileName));
            FileStream fin = new FileStream(Server.MapPath("~/Upload/" + FileUpload1.FileName), FileMode.Open);
            StreamReader sr = new StreamReader(fin);
            string line = sr.ReadLine();
            while (line != null)
            {
                TextBox1.Text = TextBox1.Text + line;
                line = sr.ReadLine();
            }
            sr.Close();
            fin.Close();


            
        }
    }
}