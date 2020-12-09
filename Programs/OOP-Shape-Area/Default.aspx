<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:RadioButton ID="rdoTriangle" runat="server" AutoPostBack="True" 
            oncheckedchanged="rdoTriangle_CheckedChanged" Text="Triangle" />
        <asp:RadioButton ID="rdoSquare" runat="server" AutoPostBack="True" 
            oncheckedchanged="rdoSquare_CheckedChanged" Text="Square" />
        <asp:RadioButton ID="rdorect" runat="server" AutoPostBack="true"
            oncheckedchanged="rdorect_CheckedChanged" Text="Rectangle" />
    
    </div>
    </form>
</body>
</html>
