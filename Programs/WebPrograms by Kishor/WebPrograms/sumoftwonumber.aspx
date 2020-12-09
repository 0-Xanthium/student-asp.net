<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sumoftwonumber.aspx.cs" Inherits="WebPrograms.sumoftwonumber" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Enter first number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtnum1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter second number"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtnum2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnsum" runat="server" onclick="Button1_Click" Text="sum" />
        <br />
        <asp:Label ID="lblresult" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
