using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    // private SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename='C:\\Users\\admin\\Documents\\Visual Studio 2010\\WebSites\\WebSite4\\App_Data\\NewsPaperDB.mdf';Integrated Security=True;Connect Timeout=180;User Instance=True");
   
    private SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["NewsConString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }
    protected void gvbind()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from nwsTable", conn);
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
}