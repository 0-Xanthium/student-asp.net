using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Redirect_To_New_Page_After_Login
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           if(txtUsername.Text == "" || txtPassword.Text == "")
           {
               lblMessage.Text = "Username or Password cannot be empty!";
           }
           else
           {
               SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Venkzz\Desktop\ASP.Net Practicals\ASPPracs.mdf';Integrated Security=True;Connect Timeout=30");

               con.Open();

               SqlCommand cmd = new SqlCommand("Select * from Login where Username='" + txtUsername.Text + "';", con);

               SqlDataReader rdr;

               rdr = cmd.ExecuteReader();

               String dbusername = "", dbpassword = "";

               while (rdr.Read())
               {
                   dbusername = rdr.GetString(1);
                   dbpassword = rdr.GetString(2);
               }

               con.Close();

               if (txtUsername.Text == dbusername && txtPassword.Text == dbpassword)
               {
                   Response.Redirect("Home.aspx?user=" + dbusername);
               }
               else
               {
                   lblMessage.Text = "Invalid Username or Password!";
               }
           }
            
        }
    }
}