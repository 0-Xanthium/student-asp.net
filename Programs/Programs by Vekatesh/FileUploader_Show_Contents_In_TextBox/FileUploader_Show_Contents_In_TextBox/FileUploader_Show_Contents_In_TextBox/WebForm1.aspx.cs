using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text;
using System.IO;

namespace FileUploader_Show_Contents_In_TextBox
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            String path = FileUpload1.PostedFile.FileName;

            String[] readText = File.ReadAllLines(path);

            int len = readText.Length - 1;

            for (int i = 0; i <= len; i++ )
            {
                txtContents.Text = txtContents.Text + readText[i] + Environment.NewLine;
            }
        }
    }
}