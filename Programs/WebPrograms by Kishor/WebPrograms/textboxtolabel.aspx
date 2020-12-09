<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="textboxtolabel.aspx.cs" Inherits="WebPrograms.textboxtolabel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Write some text:"></asp:Label><br />
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox><br />
        <asp:Button ID="btncopy" runat="server" Text="Copy to Label" 
            onclick="btncopy_Click" /><br />
        <asp:Label ID="lblmessage" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
