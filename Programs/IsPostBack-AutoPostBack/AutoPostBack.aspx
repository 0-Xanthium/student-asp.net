<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutoPostBack.aspx.cs" Inherits="AutoPostBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong>AutoPostBack</strong>:
Whenever we click on a button ,page automatically goes to the server for executing the handler ,but if we want to handle some other control event we need to set AutoPostBack property of Control is "True" Otherwise any event of that control will not handled.
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server">
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
