<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlistwithaddremove.aspx.cs" Inherits="WebPrograms.checkboxlistwithaddremove" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>java</asp:ListItem>
                        <asp:ListItem>vb.net</asp:ListItem>
                        <asp:ListItem>asp.net</asp:ListItem>
                        <asp:ListItem>php</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                        <asp:ListItem>oracle</asp:ListItem>
                        <asp:ListItem>erp</asp:ListItem>
                        <asp:ListItem>ob</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
        </tr>
</table>
    
        <br />
        <br />
        <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" />
        <asp:Button ID="btnremove" runat="server" onclick="btnremove_Click" 
            Text="Remove" />

    
    </div>
    </form>
</body>
</html>
