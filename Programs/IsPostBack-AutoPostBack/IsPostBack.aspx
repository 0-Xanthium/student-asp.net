<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IsPostBack.aspx.cs" Inherits="IsPostBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong>IsPostBack</strong>:  When the page is loaded at first time this variable contain "False" value but some event fire on page and page is send to the server then comes back from the server this variable contains "true" value, so if we want to use some values only for the first time when page is loaded then we can use this property.
    
        <br />
    
    <br />

        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>

    </div>
    </form>
</body>
</html>
