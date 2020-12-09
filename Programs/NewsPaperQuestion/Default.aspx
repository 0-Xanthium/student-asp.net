<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Main1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="nwsID">
    <Columns>
        <asp:BoundField DataField="nwsID" HeaderText="SNo" />
        <asp:BoundField DataField="nwsDate" HeaderText="Date" />
        <asp:BoundField DataField="nwsHeadLine" HeaderText="Headline" />
        <asp:BoundField DataField="nwsDetail" HeaderText="Detail" />
    </Columns>
    </asp:GridView>
 
    </div>
    
    </asp:Content>