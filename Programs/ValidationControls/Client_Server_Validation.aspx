<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Client_Server_Validation.aspx.cs"
    Inherits="Client_Server_Validation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ContactNumberValidation(sender, args) {
            if (document.getElementById("<%=txtPhoneNumber.ClientID %>").value == '') {
                sender.innerHTML = "Please enter your Phone Number.";
                args.IsValid = false;
            } else if (document.getElementById("<%=txtPhoneNumber.ClientID %>").value.length != 10) {
                sender.innerHTML = "Phone Number should be 10 digit.";
                args.IsValid = false;
            } else {
                args.IsValid = true;
            }
        }    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Enable/Disable JavaScript to check working of script<br />
        <br />
        <asp:TextBox ID="txtPhoneNumber" runat="server" Width="173px" />
        <asp:CustomValidator runat="server" Display="Dynamic" ID="customValidator1" ForeColor="Red"
            ErrorMessage="" OnServerValidate="customValidator_ServerValidate" ClientValidationFunction="ContactNumberValidation">  
        </asp:CustomValidator>
        <asp:Button ID="btnSave" runat="server" Text="Send Message" OnClick="btnSave_Click"
            ForeColor="#009933" />
        <asp:Label ID="Label1" runat="server" ForeColor="#009933"></asp:Label>
    </div>
    </form>
</body>
</html>
