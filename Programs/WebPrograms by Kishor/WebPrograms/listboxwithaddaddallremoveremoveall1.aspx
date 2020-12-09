<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listboxwithaddaddallremoveremoveall1.aspx.cs" Inherits="WebPrograms.listboxwithaddaddallremoveremoveall1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 172px;
        }
        .style3
        {
            width: 172px;
            height: 184px;
        }
        .style4
        {
            height: 184px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ListBox ID="ListBox1" runat="server" Height="147px" Width="101px">
                        <asp:ListItem>java</asp:ListItem>
                        <asp:ListItem>vb.net</asp:ListItem>
                        <asp:ListItem>c#</asp:ListItem>
                        <asp:ListItem>asp.net</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="style4">
&nbsp;&nbsp;&nbsp;
                    <asp:ListBox ID="ListBox2" runat="server" Height="139px" Width="101px">
                        <asp:ListItem>uml</asp:ListItem>
                        <asp:ListItem>erp</asp:ListItem>
                        <asp:ListItem>ob</asp:ListItem>
                        <asp:ListItem>ba</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnaddall" runat="server" onclick="btnaddall_Click" 
                        Text="Add All" />
                </td>
                <td>
                    <asp:Button ID="btnremove" runat="server" onclick="btnremove_Click" 
                        Text="Remove" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnremoveall" runat="server" onclick="btnremoveall_Click" 
                        Text="Remove All" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
