<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Age_Insurance_Premium_Calc.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;">
      Enter your Age: <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnShow" runat="server" Text="Show Plan" OnClick="btnShow_Click" />
        <br />
        <br />
        <asp:Label ID="lblPlan" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
    </div>
    </form>
</body>
</html>
