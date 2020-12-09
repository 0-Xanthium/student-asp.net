using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AdRedirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String strAdPath;
//Get the URL to navigate to.
strAdPath = Request.QueryString["Adpath"];

//Log the ad click to a text file (you can use a database).
FileInfo AdFile = new FileInfo(Server.MapPath("AdResponse.txt"));
StreamWriter AdData;
AdData = AdFile.AppendText();
AdData.WriteLine(DateTime.Now.ToString() + ": Ad clicked. Redirect to " +	strAdPath);
AdData.Close();

//Redirect the user to the ad URL.
Response.Redirect(strAdPath);
    }
}