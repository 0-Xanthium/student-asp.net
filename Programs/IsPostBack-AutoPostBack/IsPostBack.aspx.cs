﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IsPostBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("A");
            DropDownList1.Items.Add("B");
            DropDownList1.Items.Add("C");
            DropDownList1.Items.Add("D");
            DropDownList1.Items.Add("D");
        }
    }
}