using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebPrograms
{
    public partial class insertrecordswithconnectedarchitecture : System.Web.UI.Page
    {
        public string conString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Kishor Trimal\\Documents\\tel_db.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DataSet ds=new DataSet();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }

        protected void bind()
        {
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select id,fname,lname,address,isenable from tel_dir";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into tel_dir values ('"+ txtfname.Text +"','"+ txtlname.Text +"','"+ txtaddress.Text +"','"+ DropDownList1.SelectedItem +"')";
            cmd.ExecuteNonQuery();
            lblmessage.Text = "Data inserted sucessfully";
            con.Close();
            bind();
        }
    }
}