<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertrecordswithconnectedarchitecture.aspx.cs" Inherits="WebPrograms.insertrecordswithconnectedarchitecture" %>

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
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Fname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Lname"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    IsEnable</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="125px">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btninsert" runat="server" onclick="btninsert_Click" 
                        Text="Insert" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="fname" HeaderText="Fname" />
                            <asp:BoundField DataField="lname" HeaderText="Lname" />
                            <asp:BoundField DataField="address" HeaderText="Address" />
                            <asp:BoundField DataField="isenable" HeaderText="Isenable" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
