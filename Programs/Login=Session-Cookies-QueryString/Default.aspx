<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMsg" runat="server" ForeColor="#FF3300"></asp:Label>
        <br />
        <br />
        Name: 
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox> <br />
        Password: 
        <asp:TextBox ID="txtPass" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
