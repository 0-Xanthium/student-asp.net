<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxwithboldunderlineitalics.aspx.cs" Inherits="WebPrograms.checkboxwithboldunderlineitalics" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    
</head>
<body>
<form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Text"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="cbbold" runat="server" Text="Bold" AutoPostBack="True" 
                        oncheckedchanged="csbold_CheckedChanged" />
                    <asp:CheckBox ID="cbunderline" runat="server" Text="Underline" 
                        AutoPostBack="True" oncheckedchanged="cbunderline_CheckedChanged" />
                    <asp:CheckBox ID="cbitalics" runat="server" Text="Italics" AutoPostBack="True" 
                        oncheckedchanged="cbitalics_CheckedChanged" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
