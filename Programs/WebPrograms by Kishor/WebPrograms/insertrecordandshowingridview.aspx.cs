using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebPrograms
{
    public partial class insertrecordandshowingridview : System.Web.UI.Page
    {
        public string conString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\Kishor Trimal\\Documents\\tourdb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
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
            cmd.CommandText = "select * from tour_table";
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
            cmd.CommandText = "insert into tour_table values('" + txtname.Text +"','" + txtduration.Text +"','" + txtprice.Text +"')";
            cmd.ExecuteNonQuery();
            lblmessage.Text = "Data inserted Sucessfully";
            con.Close();
            bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string tourid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lbltourid")).Text;
            string name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txttourname")).Text;
            string duration = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txttourduration")).Text;
            string packageprice = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtpackageprice")).Text;
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "update tour_table set tourname='" + name +"',tourduration='" + duration +"',tourpackageprice='" + packageprice +"' where tourid='" + Convert.ToInt32(tourid) +"'";
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string tourid = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblid")).Text;
            con.ConnectionString = conString;
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "delete from tour_table where tourid='" + Convert.ToInt32(tourid) + "'";
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