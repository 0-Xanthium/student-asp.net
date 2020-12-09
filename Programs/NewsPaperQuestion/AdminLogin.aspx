<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
        <br />
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
    <br />
        <br />
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <br /><br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" 
            Width="132px" />
    </div>
    </form>
</body>
</html>
