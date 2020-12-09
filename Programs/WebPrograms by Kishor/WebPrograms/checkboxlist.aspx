<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist.aspx.cs" Inherits="WebPrograms.checkboxlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
            ontextchanged="CheckBoxList1_TextChanged">
        <asp:ListItem>item 1</asp:ListItem>
        <asp:ListItem>item 2</asp:ListItem>
        <asp:ListItem>item 3</asp:ListItem>
        <asp:ListItem>item 4</asp:ListItem>
        <asp:ListItem>item 5</asp:ListItem>
        </asp:CheckBoxList><br />
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
