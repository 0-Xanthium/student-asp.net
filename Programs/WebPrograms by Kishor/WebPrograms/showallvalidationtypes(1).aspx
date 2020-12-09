<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showallvalidationtypes.aspx.cs" Inherits="WebPrograms.showallvalidationtypes" %>

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
        }
        .style3
        {
            width: 155px;
        }
        .style4
        {
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style3">
&nbsp;<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="Name field required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
                </td>
                <td class="style3">
&nbsp;<asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="Passowrd field Required" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label3" runat="server" Text="confirm password"></asp:Label>
                </td>
                <td class="style3">
&nbsp;<asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" 
                        ErrorMessage="confirm password must be same as password " ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="style3">
&nbsp;<asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtage" Display="Dynamic" ErrorMessage="Age field Required" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtage" ErrorMessage="Age should be in between 18 to 30" 
                        ForeColor="Red" MaximumValue="30" MinimumValue="18" Display="Dynamic">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style3">
&nbsp;<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Email field Required" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Number"></asp:Label>
                </td>
            <td>&nbsp;
                <asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
                </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="txtnumber" ErrorMessage="Number must be even" 
                    ForeColor="Red" onservervalidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
