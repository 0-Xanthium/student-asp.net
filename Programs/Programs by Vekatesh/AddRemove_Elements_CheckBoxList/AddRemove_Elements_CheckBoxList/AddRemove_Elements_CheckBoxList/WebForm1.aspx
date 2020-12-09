<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AddRemove_Elements_CheckBoxList.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <br />
        Chk1<asp:CheckBoxList ID="chk1" runat="server">
            <asp:ListItem>CBL1 Item 1</asp:ListItem>
            <asp:ListItem>CBL1 Item 2</asp:ListItem>
            <asp:ListItem>CBL1 Item 3</asp:ListItem>
        </asp:CheckBoxList>

        <br />

        <asp:Button ID="b1" runat="server" Text="Add" OnClick="b1_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="b2" runat="server" Text="Remove" OnClick="b2_Click" />
        <br />
        <br />
        Chk2<br />

        <asp:CheckBoxList ID="chk2" runat="server">
            <asp:ListItem>CBL2 Item 1</asp:ListItem>
            <asp:ListItem>CBL2 Item 2</asp:ListItem>
            <asp:ListItem>CBL2 Item 3</asp:ListItem>
        </asp:CheckBoxList>

    </div>
    </form>
</body>
</html>
