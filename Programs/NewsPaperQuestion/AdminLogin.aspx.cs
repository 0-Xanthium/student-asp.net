using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String tUser = txtName.Text;
        String tPwd = txtPass.Text;

        String strCon = ConfigurationManager.ConnectionStrings["NewsConString"].ConnectionString;
        SqlConnection con = new SqlConnection(strCon);
        
            String cmdstr = "select count(*) from usrTable where usrName = '" + tUser + "' and usrPwd = '" + tPwd + "'";
            con.Open();
            SqlCommand check = new SqlCommand(cmdstr, con);
            int n = Convert.ToInt16(check.ExecuteScalar().ToString());

            if (n == 1)
            {
                Session["AdminAuth"] = true;
                Response.Redirect("~/AdminDefault.aspx");
            }
            else
            {
                Label3.ForeColor = Color.Red;
                Label3.Text = "Invalid credintials!!";
            }
    }

}