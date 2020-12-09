<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ConsumeWebService.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <p><asp:Label ID="Label1" runat="server" Text="Enter Number"></asp:Label><asp:TextBox ID="txtParam"
            runat="server"></asp:TextBox><asp:Button ID="btnPrime" runat="server" 
               Text="Check Prime" onclick="btnPrime_Click" /> &nbsp;|&nbsp; 
           <asp:Button ID="btnFact" runat="server" Text="Get Factorial" 
               onclick="btnFact_Click" /> &nbsp;&nbsp;<asp:Label
                ID="lblResult" runat="server" Text=""></asp:Label> </p> 
    </div>
    </form>
</body>
</html>
