<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProfileData.aspx.cs" Inherits="UpdateProfileData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .style3
    {
        width: 137px;
    }
    .style1
    {
        width: 100%;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Fisrt Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtphoneno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" onclick="Button1_Click" 
                    Text="Update Profile Data" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
