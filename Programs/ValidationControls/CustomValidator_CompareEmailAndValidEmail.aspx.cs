using System;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class CustomValidator_CompareEmailAndValidEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        Regex regex = new Regex(@"^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");
        if (TextBox1.Text != null && regex.IsMatch(TextBox1.Text) && TextBox2.Text != null && regex.IsMatch(TextBox2.Text))
        {
            if (TextBox2.Text == TextBox1.Text)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
                CustomValidator1.ErrorMessage = "Both Id should be same";
            }
        }
        else
        {
            args.IsValid = false;
            CustomValidator1.ErrorMessage = "Enter Email address with proper Format";
        }
    }
}