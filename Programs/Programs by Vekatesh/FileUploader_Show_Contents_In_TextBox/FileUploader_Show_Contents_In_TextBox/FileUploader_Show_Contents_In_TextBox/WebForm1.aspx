<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FileUploader_Show_Contents_In_TextBox.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        <br />
        <br />
        Contents:<br />

        <asp:TextBox ID="txtContents" runat="server" Height="61px" Width="947px" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>

    </div>
    </form>
</body>
</html>
