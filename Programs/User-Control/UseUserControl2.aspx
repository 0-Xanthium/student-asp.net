<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UseUserControl2.aspx.cs" Inherits="UseUserControl2" %>
<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/UserInfoBoxControl.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>User Control</p>
        <My:UserInfoBoxControl runat="server" ID="MyUserInfoBoxControl" />
        <p>Page Data</p>
    </div>
    </form>
</body>
</html>
