<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UseEventUserControl.aspx.cs" Inherits="UseEventUserControl" %>

<%@ Register TagPrefix="My" TagName="EventUserControl" Src="EventUserControl .ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Event handling in user control</p>
        <My:EventUserControl runat="server" ID="MyEventUserControl" OnPageTitleUpdated="MyEventUserControl_PageTitleUpdated" />
    
    <h2>Page content</h2>

        <h1 style="margin: 0px -25px 14px; padding: 4px 15px; font-family: Georgia, Arial, Helvetica, sans-serif; font-size: 2em; color: rgb(154, 192, 70); border-bottom: 1px dotted rgb(192, 192, 192); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            Events in UserControls</h1>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        Events can be declared and used as well! This allows you to encapsulate even more 
        functionality inside your controls, and then let your page respond to certain 
        events, triggered by the control, if necessary.<span 
            class="Apple-converted-space">&nbsp;</span></span><br 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        For this chapter, we will create a new and very simple UserControl, to 
        illustrate how to create events. It won&#39;t have a real life purpose, but is only 
        meant to show you how to use events in a UserControl. If you don&#39;t know how to 
        create and use a UserControl, then please go back a few chapters. This one will 
        focus on the event part.<span class="Apple-converted-space">&nbsp;</span></span><br 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        First, we create a new, simple EventUserControl, with this code in it:</span><pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">&lt;%</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;">@ Control Language</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">C#</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> AutoEventWireup</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">true</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> CodeFile</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">EventUserControl.ascx.cs</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> Inherits</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">EventUserControl</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">
Page title: 
</span><span class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">asp:TextBox </span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);">runat</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;server&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> ID</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;txtPageTitle&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">
</span><span class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">asp:Button </span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);">runat</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;server&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> ID</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;btnUpdatePageTitle&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> OnClick</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;btnUpdatePageTitle_Click&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> Text</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;Update&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;</span>
</pre>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        All just text and server controls that we know. In the CodeBehind, it looks a 
        bit like this:</span><pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">public</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">partial</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">class</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> EventUserControl : System.Web.UI.UserControl
{
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">private</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">string</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> pageTitle;
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">public</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">event</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> EventHandler PageTitleUpdated;

    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">protected</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">void</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> btnUpdatePageTitle_Click(</span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">object</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> sender, EventArgs e)
    {
        </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">this</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">.pageTitle </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> txtPageTitle.Text;
        </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">if</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">(PageTitleUpdated </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">!=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">null</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">)
            PageTitleUpdated(</span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">this</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">, EventArgs.Empty);
    }

    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">public</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">string</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> PageTitle
    {
        </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">get</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> { </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">return</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> pageTitle; }
    }
}</span>
</pre>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        We have defined a pageTitle container variable and a property for it. Then we 
        have a new thing, an event. As you can see, it&#39;s defined much like any other 
        kind of field, but it is a bit different. The theory about is explained in the 
        C# tutorial, so we won&#39;t get into that here.<span class="Apple-converted-space">&nbsp;</span></span><br 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        In the Click event of our button, we set the pageTitle field. Then we check if 
        PageTitleUpdated, our event, is null. If it&#39;s not, it means that we have 
        subscribed to this event somewhere, and in that case, we send a notification by 
        calling the PageTitleUpdated as a method. As parameters, we send this (a 
        reference to the UserControl it self) as the sender, and an empty EventArgs 
        parameter. This will make sure that all subscribers are notified that the 
        pageTitle has just been updated. Now, in our page, I&#39;ve declared our UserControl 
        like this:</span><pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">&lt;%</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;">@ Register TagPrefix</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">My</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> TagName</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">EventUserControl</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> Src</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">~/EventUserControl.ascx</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span>
</pre>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        And inserted it like this:</span><pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">My:EventUserControl </span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);">runat</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;server&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> ID</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;MyEventUserControl&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> OnPageTitleUpdated</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;MyEventUserControl_PageTitleUpdated&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;</span>
</pre>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        As you can see, we have defined an event handler for the PageTitleUpdated event 
        like if it was any other server control. In the CodeBehind of our page, we 
        define the simple event handler for the UserControl event like this:</span><pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">protected</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">void</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> MyEventUserControl_PageTitleUpdated(</span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">object</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> sender, EventArgs e)
{
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">this</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">.Title </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> MyEventUserControl.PageTitle;
}</span>
</pre>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        It&#39;s that simple! Now obviously, updating the page title could have been done 
        directly from our UserControl, so it&#39;s just to provide a simple example on how 
        to use events, but as you will likely learn later on, this technic will come in 
        handy in lots of situations.</span></div>
    </form>
</body>
</html>
