<%@ Page Language="C#" AutoEventWireup="false" CodeFile="AutoEventWireupFalse.aspx.cs" Inherits="AutoEventWireupFalse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #0000FF;
        }
        .style2
        {
            background-color: #FFCC99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Message Label" ForeColor="#FF6600"></asp:Label>
        <br />
        <br />
        <div style="color: rgb(51, 51, 51); font-variant-ligatures: normal'; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-size: 15px; font-style: normal;">
            </div>
        There are some attribute is used in&nbsp;@Page Directive<br />
        <br />
        <strong>AutoEventWireup</strong>:&nbsp;It is attribute of&nbsp;&nbsp;@Page Directive.&nbsp;By 
        default its value is &#39;<strong>True</strong>&#39; that means event of page class will 
        be bound automatically with event handlers but if it is &#39;false&#39;&nbsp;then we need to 
        bind event handler with page class event manually.<br />
        <br />
        <strong>Step1</strong>:-&nbsp;Open your visual studio-&gt;go File-&gt;New website-&gt;select 
        ASP.NET Empty website-&gt;Add &nbsp;a Default.aspx page from the solution explore-&gt;drag 
        and drop label control from Toolbox.
        <br />
        <br />
        <strong>Step2</strong>:-&nbsp;Open source from bottom of the page and 
        change&nbsp;AutoEventWireup =false.
        <br />
        <br />
        <strong>Step3</strong>:-&nbsp;go Default,aspx.cs file and write the code:<br />
        <br />
        public&nbsp;partial&nbsp;class&nbsp;_Default : System.Web.UI.Page<br />
        {&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp; public&nbsp;<span class="style1">_Default</span>()<br />
        &nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style2">Page.Load 
        +=new&nbsp;EventHandler(Page_Load);</span>&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp; }<br />
        &nbsp;<br />
&nbsp;&nbsp;&nbsp; protected&nbsp;void&nbsp;<span class="style1">Page_Load</span>(object&nbsp;sender, 
        EventArgs e)&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp; {<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style2">Label1.Text=&quot;Page class 
        event is bound manually. To demonstrate use of&nbsp; AutoEventWireup attribute 
        of @Page directive.&quot;;</span>&nbsp;<br />
&nbsp;&nbsp;&nbsp; }<br />
        }</div>
    </form>
</body>
</html>
