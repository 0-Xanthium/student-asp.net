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
    public partial class adminDefault : System.Web.UI.Page
    {
        public string conString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Kishor Trimal\\Documents\\newsdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();

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
            cmd.CommandText = "select * from news_table";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into news_table values(@date,'" + txtheadline.Text +"','" + txtdetail.Text +"')";
            cmd.Parameters.AddWithValue("@date",Convert.ToDateTime(txtdate.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            lblmessage.Text = "Data inserted sucessfully";
            bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string newsid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lbleditid")).Text;
            string date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdate")).Text;
            string headline = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtheadline")).Text;
            string detail = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdetail")).Text;
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "update news_table set news_date='"+ date +"',news_headline='"+ headline +"',news_detail='"+ detail +"' where news_id='"+ Convert.ToInt32(newsid) +"'";
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string newsid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblitemid")).Text;
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "delete from news_table where news_id='" + Convert.ToInt32(newsid) + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }
    }
}