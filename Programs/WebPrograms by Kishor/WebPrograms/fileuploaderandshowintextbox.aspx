﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileuploaderandshowintextbox.aspx.cs" Inherits="WebPrograms.fileuploaderandshowintextbox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnshowdata" runat="server" onclick="btnshowdata_Click" 
            Text="show data" />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="68px" TextMode="MultiLine" 
            Width="238px"></asp:TextBox>
        <br />
    
    </div>
    </form>
</body>
</html>
