<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Square2.aspx.cs" Inherits="Square2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:TextBox ID="txtside" runat="server" placeholder="Enter a side of Square"></asp:TextBox><br /><br />
        <asp:Button ID="btnarea" runat="server" Text="Area" onclick="btnarea_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click" />
        <br /><br />
        <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
