<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Triangle2.aspx.cs" Inherits="Triangle2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:TextBox ID="txtBase" runat="server" placeholder = "Enter the base of triangle "></asp:TextBox><br /><br />
        <asp:TextBox ID="txtHeight" runat="server" placeholder = "Enter the height of triangle "></asp:TextBox><br /><br />
        <asp:Button ID="btnArea" runat="server" Text="Area" onclick="btnArea_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click" />
        <br /><br />
        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br /><br />
    </div>
    </form>
</body>
</html>
