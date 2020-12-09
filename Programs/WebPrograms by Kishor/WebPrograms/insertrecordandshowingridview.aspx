<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertrecordandshowingridview.aspx.cs" Inherits="WebPrograms.insertrecordandshowingridview" %>

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
            width: 163px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Tour Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Tour Duration"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtduration" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="PackagerPrice"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
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
                <td class="style2" colspan="2">
                    <asp:Label ID="lblmessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                        onrowupdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Tour ID">
                                <EditItemTemplate>
                                    <asp:Label ID="lbltourid" runat="server" Text='<%# Bind("tourid") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%# Bind("tourid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txttourname" runat="server" Text='<%# Bind("tourname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("tourname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Duration">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txttourduration" runat="server" Text='<%# Bind("tourduration") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("tourduration") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Package Price">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtpackageprice" runat="server" Text='<%# Bind("tourpackageprice") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("tourpackageprice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
