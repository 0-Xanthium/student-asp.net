﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body ID="mybody" runat="server">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;<asp:TextBox ID="TextName" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Color"></asp:Label>
&nbsp;<asp:TextBox ID="TextColor" runat="server"></asp:TextBox> <br />
       <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
