using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class AdminDefault : System.Web.UI.Page
{
    //private SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename='C:\\Users\\admin\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\NewsPaperDB.mdf';Integrated Security=True;Connect Timeout=180;User Instance=True");
    private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["NewsConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["AdminAuth"]== null)
        {
            Response.Redirect("~/AdminLogin.aspx");
        }

        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void gvbind()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from nwsTable order by nwsDate desc", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

        conn.Open();
        SqlCommand cmd = new SqlCommand("delete FROM nwsTable where nwsID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
       
        int rowsAffected = cmd.ExecuteNonQuery();
        lblMsg.Text = rowsAffected + " record deleted";
        conn.Close();
        gvbind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gvbind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

        TextBox textHeadline = (TextBox)row.Cells[2].Controls[0];
        TextBox textDetail = (TextBox)row.Cells[3].Controls[0];


        GridView1.EditIndex = -1;
        conn.Open();

        SqlCommand cmd = new SqlCommand("update nwsTable set nwsHeadLine='" + textHeadline.Text + "',nwsDetail='" + textDetail.Text + "'where nwsID='" + id + "'", conn);
        Int32 rowsAffected = cmd.ExecuteNonQuery();
        
        lblMsg.Text = rowsAffected + " record updated";
        conn.Close();
        gvbind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        gvbind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gvbind();
    }

    protected void ServerValidate(object source, ServerValidateEventArgs value)
    {
        int num;
        // even number?
        if (int.TryParse(value.Value, out num))
        {
            value.IsValid = (num % 2 == 0);
        }
        else
        {
            value.IsValid = false;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            lblMsg.Text = "Page is valid!";
        }
        else
        {
            lblMsg.Text = "Page is not valid! :-(";
        }


        String tDate = txtDate.Text;
        String tHeadline = txtHeadline.Text;
        String tDetail = txtDetail.Text;

        

        String sql = "Insert into nwsTable(nwsDate, nwsHeadLine, nwsDetail) values(@newsDate, @newsHeadline, @newsDetail)";

        SqlCommand inCmd = new SqlCommand();
        inCmd.Connection = conn;
        inCmd.CommandText = sql;
        inCmd.CommandType = CommandType.Text;

        inCmd.Parameters.AddWithValue("@newsDate", tDate);
        inCmd.Parameters.AddWithValue("@newsHeadline", tHeadline);
        inCmd.Parameters.AddWithValue("@newsDetail", tDetail);
        
        conn.Open();
        int rowsAffected = inCmd.ExecuteNonQuery();
        lblMsg.Text = rowsAffected + " record inserted";
        txtDate.Text = "";
        txtDetail.Text = "";
        txtHeadline.Text = "";
        conn.Close();

        gvbind();
    }
}