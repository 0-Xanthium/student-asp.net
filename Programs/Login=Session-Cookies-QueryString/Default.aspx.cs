using System;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = Request.QueryString["qsm"]; //qsm variable will come from url       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "Ram" && txtPass.Text == "123") {
            //Create cookie and add it 
            HttpCookie nameCookie = new HttpCookie("abc", txtName.Text);
            Response.Cookies.Add(nameCookie);

            //create session
            Session["aks"] = txtName.Text;
            Response.Redirect("NextPage.aspx");
        }
        else {
            lblMsg.Text = "User Name or Password did not match!!";
        }
    }
}