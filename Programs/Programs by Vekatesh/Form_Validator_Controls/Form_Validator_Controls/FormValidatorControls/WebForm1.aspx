<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FormValidatorControls.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- add 3 lines in app.config file if error occurs-->

        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is a required field!" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is a required field!" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be 18-25!" MinimumValue="18" MaximumValue="25" Type="Integer"></asp:RangeValidator>
        <br /><br />

        <asp:Label ID="lblExperience" runat="server" Text="Work Experience:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtExperience" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtExperience" ErrorMessage="You must have 5 Year Exp or above to apply!" Operator="GreaterThanEqual" ValueToCompare="5" Type="Integer"></asp:CompareValidator>
        <br /><br />

        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email id!" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br /><br />

        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password cannot be empty!" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblRePassword" runat="server" Text="Re-enter Password:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Re-Password cannot be empty!" ControlToValidate="txtRePassword"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Passwords do not match!" ControlToCompare="txtPassword" ControlToValidate="txtRePassword"></asp:CompareValidator>
        <br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

        <br />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode = "BulletList" HeaderText="Errors:" />
    </div>
    </form>
</body>
</html>
