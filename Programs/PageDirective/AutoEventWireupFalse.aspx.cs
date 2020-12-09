using System;
using System.Web.UI;

public partial class AutoEventWireupFalse : System.Web.UI.Page
{
    public AutoEventWireupFalse()
    {
        Page.Load += new EventHandler(Page_Load); //If AutoEventWireup is set to False then we have to explicitly bind the event handler
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Page class event is bound manually. To demonstrate use of  AutoEventWireup attribute of @Page directive.";
    }

}