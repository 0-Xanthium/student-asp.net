<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            Cookie Name <asp:textbox id="NameField" runat="server"/><br /> 
            Cookie Value <asp:textbox id="ValueField" runat="server"/><br />
            <asp:button ID="Button1" text="WriteCookie" onclick="WriteClicked" runat="server" /><br />
            <asp:HyperLink ID="lnkRead" NavigateUrl="Read.aspx" runat="server" Visible="false">Read the cookies </asp:HyperLink><br /> 
    </div>
    </form>
</body>
</html>
