<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listboxwithaddaddallremoveremoveall.aspx.cs" Inherits="WebPrograms.listboxwithaddaddallremoveremoveall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListBox ID="ListBox1" runat="server" Height="153px" Width="141px">
            <asp:ListItem>java</asp:ListItem>
            <asp:ListItem>vb.net</asp:ListItem>
            <asp:ListItem>php</asp:ListItem>
            <asp:ListItem>asp.net</asp:ListItem>
        </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox2" runat="server" Height="153px" Width="145px">
        </asp:ListBox>
        <br />
        <br />
        <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" 
            Width="70px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnaddall" runat="server" onclick="btnaddall_Click" 
            Text="Add All" Width="69px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnremove" runat="server" onclick="btnremove_Click" 
            Text="Remove" Width="70px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnremoveall" runat="server" onclick="btnremoveall_Click" 
            style="margin-left: 2px" Text="Remove All" Width="70px" />
    
    </div>
    </form>
</body>
</html>
