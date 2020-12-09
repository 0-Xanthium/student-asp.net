<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDefault.aspx.cs" Inherits="WebPrograms.adminDefault" %>

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
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Headline"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtheadline" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdetail" runat="server"></asp:TextBox>
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
                        <asp:TemplateField HeaderText="ID">
                            <EditItemTemplate>
                                <asp:Label ID="lbleditid" runat="server" Text='<%# Bind("news_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblitemid" runat="server" Text='<%# Bind("news_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdate" runat="server" Text='<%# Bind("news_date") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("news_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Headline">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtheadline" runat="server" Text='<%# Bind("news_headline") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("news_headline") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Detail">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdetail" runat="server" Text='<%# Bind("news_detail") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("news_detail") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
