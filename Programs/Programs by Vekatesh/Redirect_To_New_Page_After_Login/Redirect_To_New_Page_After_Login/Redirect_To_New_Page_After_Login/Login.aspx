<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Redirect_To_New_Page_After_Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;">
        <h3>Login Page</h3>

        <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

        <br /><br />

        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />

        <br /><br />

        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" />
    </div>
    </form>
</body>
</html>
