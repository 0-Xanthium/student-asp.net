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
    public partial class shareholderwithdisconnected : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        string conString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Kishor Trimal\\Documents\\shareholderdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
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
            cmd.CommandText = "select * from shareholder_table";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds,"shareholder_table");
            GridView1.DataSource = ds.Tables["shareholder_table"];
            GridView1.DataBind();
            con.Close();

        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            //DataRow drnew = ds.Tables["shareholder"].NewRow();
            //drnew[0] = textBox1.Text;
            //drnew[1] = textBox2.Text;
            //drnew[2] = textBox3.Text;
            //ds.Tables["Emp"].Rows.Add(drnew);
            //da.Update(ds, "Emp");
            //MessageBox.Show("Record added");
            //dataGridView1.DataSource = ds.Tables["Emp"];
            //DataRow drnew;
            //drnew = ds.Tables["shareholder_table"].NewRow();
            //drnew[0] = txthname.Text;
            //drnew[1] = txtaddress.Text;
            //drnew[2] = txtnoofshares.Text;
            //drnew[3] = txtsharessrfrom.Text;
            //drnew[4] = txtsharessrto.Text;
            //ds.Tables["shareholder_table"].Rows.Add(drnew);
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.Update(ds);
            //bind();
            try
            {

                con.ConnectionString = conString;
                
                con.Open();
            
                SqlDataAdapter da = new SqlDataAdapter("select * from shareholder_table", con);

                SqlCommandBuilder builder = new SqlCommandBuilder(da);
                DataSet ds1 = new DataSet();
                da.Fill(ds1, "shareholder_table");

                DataTable dt = ds1.Tables["shareholder_table"];
                DataRow drnew = dt.NewRow();
                //drnew[0] = null;
                drnew[1] = "shyam";
                drnew[2] = "nerul";
                drnew[3] = 100;
                drnew[4] = 10;
                drnew[5] = 110;
                dt.Rows.Add(drnew);
                da.Update(ds1, "shareholder_table");
            }
            catch (Exception exx)
            {
                Response.Write(exx.Message);
                Response.Write( exx.Source.ToString());
            }
            
        }
    }
}