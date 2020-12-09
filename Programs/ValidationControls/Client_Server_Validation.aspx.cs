using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Server_Validation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void customValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtPhoneNumber.Text == string.Empty)
        {
            customValidator1.ErrorMessage = "Please enter your Mobile Number.";
            args.IsValid = false;
        }
        else if (txtPhoneNumber.Text.Length != 10)
        {
            customValidator1.ErrorMessage = "Mobile Number should be 10 digit.";
            args.IsValid = false;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Label1.Text = txtPhoneNumber.Text + " saved.";
        }
    } 
}