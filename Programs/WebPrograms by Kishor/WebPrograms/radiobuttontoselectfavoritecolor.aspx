<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobuttontoselectfavoritecolor.aspx.cs" Inherits="WebPrograms.radiobuttontoselectfavoritecolor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Selec your favoriate color:"></asp:Label><br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="red" GroupName="colors" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="green" GroupName="colors" />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="blue" GroupName="colors" /><br />
        <asp:Button ID="btnsubmit" runat="server" Text="submit" 
            onclick="btnsubmit_Click" /><br />
        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
