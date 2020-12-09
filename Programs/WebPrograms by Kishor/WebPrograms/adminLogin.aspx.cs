using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebPrograms
{
    public partial class adminLogin : System.Web.UI.Page
    {
        public string conString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Kishor Trimal\\Documents\\newsdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con=new SqlConnection();
        SqlCommand cmd=new SqlCommand();
        SqlDataReader rd;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select * from adminlogin where username='"+ txtusername.Text +"'and password='"+ txtpassword.Text +"'";
            rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                Response.Redirect("~/adminDefault.aspx");
               
            }
            else
            {
                lblmessage.Text = "Invalid Username/password!...";
            }
            con.Close();
            
        }
    }
}