﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomValidator_CompareEmailAndValidEmail.aspx.cs" Inherits="CustomValidator_CompareEmailAndValidEmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"
            OnServerValidate="CustomValidator1_ServerValidate" Display="Static" ForeColor="Red"></asp:CustomValidator>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
