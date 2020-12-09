<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="AdminDefault" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add|Update|Delete</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>
        
        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDate" runat="server" Height="20px" Width="150px"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
            BehaviorID="TextBox1_CalendarExtender" TargetControlID="txtDate">
        </ajaxToolkit:CalendarExtender>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtDate" ErrorMessage="Date is required!!" 
            ForeColor="#CC0000"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Headline"></asp:Label>
        &nbsp;
        &nbsp;
        <asp:TextBox ID="txtHeadline" runat="server" Height="20px" Width="150px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtHeadline" EnableTheming="False" 
            ErrorMessage="Headline is required!!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Detail"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:TextBox ID="txtDetail" runat="server" Height="70px" Rows="10" 
            TextMode="MultiLine" Width="150px"></asp:TextBox>
    
        
        &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="Static"
        ClientValidationFunction="ClientValidate"
        OnServerValidate="ServerValidate"
        ErrorMessage="Not an even number!" ></asp:CustomValidator>
        &nbsp;
    
        
        <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" 
            Text="Save News" />
        &nbsp;
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#0033CC"></asp:Label>
        <br />
        
     
        <hr />
       <br />
    </div>

<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
    DataKeyNames="nwsID" OnPageIndexChanging="GridView1_PageIndexChanging" 
    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" 
    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
    <Columns>
        <asp:BoundField DataField="nwsID" HeaderText="SNo" />
        <asp:BoundField DataField="nwsDate" HeaderText="Date" />
        <asp:BoundField DataField="nwsHeadLine" HeaderText="Headline" />
        <asp:BoundField DataField="nwsDetail" HeaderText="Detail" />
        <asp:CommandField ShowEditButton="true" />
        <asp:CommandField ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>
 
    </div>
    
    </form>
</body>
</html>
