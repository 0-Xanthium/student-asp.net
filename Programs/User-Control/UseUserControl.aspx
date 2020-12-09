<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UseUserControl.aspx.cs" Inherits="UseUserControl" %>

<%@ Register TagPrefix="My" TagName="UserInfoBoxControl" Src="~/UserInfoBoxControl.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>User Control</p>
    <My:UserInfoBoxControl runat="server" ID="MyUserInfoBoxControl" UserName="M Dutt" UserAge="11" UserCountry="India" />
    <h2>Page Data</h2>








        <h1 style="margin: 0px -25px 14px; padding: 4px 15px; font-family: Georgia, Arial, Helvetica, sans-serif; font-size: 2em; color: rgb(154, 192, 70); border-bottom: 1px dotted rgb(192, 192, 192); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            UserControls - Introduction</h1>
        <p><span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            A UserControl is a separate, reusable part of a page. You can put a piece of a 
            page in a UserControl, and then reuse it from a different location. The name, 
            UserControl, might seem a bit fancy, but actually, it&#39;s just like a regular 
            page, with an optional CodeBehind file. A notable difference is that 
            UserControls can be included on multiple pages, while a page can&#39;t. UserControls 
            are used much like regular server controls, and they can be added to a page 
            declaratively, just like server controls can.<span 
                class="Apple-converted-space">&nbsp;</span></span><br 
                style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
            <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
            <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            A big advantage of the UserControl is that it can be cached, using the 
            OutputCache functionality described in a previous chapter, so instead of caching 
            an entire page, you may cache only the UserControl, so that the rest of the page 
            is still re-loaded on each request.<span class="Apple-converted-space">&nbsp;</span></span><br 
                style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
            <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
            <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            An example where a UserControl could come in handy, is a control for showing 
            information about a certain user on a community website. In the next couple of 
            chapters, we will create a UserControl from scratch, make it fit to our purpose, 
            and then use it on a page.</span></p>
        <h1 style="margin: 0px -25px 14px; padding: 4px 15px; font-family: Georgia, Arial, Helvetica, sans-serif; font-size: 2em; color: rgb(154, 192, 70); border-bottom: 1px dotted rgb(192, 192, 192); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            Creating a UserControl</h1>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        Okay, so we will be building a UserControl for displaying information about a 
        community user. First of all, let&#39;s add a UserControl to our project. In your 
        Visual Studio, you should be able to right click on your project and select Add 
        new item.. A dialog will pop up, and you should select the Web User Control from 
        the list of possible things to add. Let&#39;s call our UserControl 
        UserInfoBoxControl, with the filename of UserInfoBoxControl.ascx. Make sure that 
        you have checked the checkbox which places code in a separate file, the 
        so-called CodeBehind file.<span class="Apple-converted-space">&nbsp;</span></span><br 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        You should now have a UserInfoBoxControl.ascx and a UserInfoBoxControl.ascx.cs 
        in your project. The first is where we put our markup, and the second is our 
        CodeBehind file. Now, if UserInfoBoxControl.ascx is not already open and 
        selected, do so now. You will see only one line of code, the UserControl 
        declaration. As mentioned, this control will be displaying information about a 
        user, so let&#39;s get started adding some markup to do so:</span><pre 
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
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">UserInfoBoxControl.ascx.cs</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> Inherits</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">UserInfoBoxControl</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">
</span><span class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">b</span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">Information about </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">&lt;%</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> this.UserName </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;/</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">b</span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">
</span><span class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">br </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">br </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">
</span><span class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">&lt;%</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> this.UserName </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> is </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">&lt;%</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> this.UserAge </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span><span 
            class="HTML-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> years old and lives in </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">&lt;%</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> this.UserCountry </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span>
</pre>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        As you can see, it&#39;s all very basic. We have a declaration, some standard tags, 
        some text, and then we have some sort of variables. Now, where do they come 
        from? Well, right now, they come from nowhere, since we haven&#39;t declared them 
        yet. We better do that right away. Open the CodeBehind file for the UserControl, 
        that is, the one which ends on .cs.<span class="Apple-converted-space">&nbsp;</span></span><br 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        As you can see, it looks just like a CodeBehind file for a regular page, except 
        that it inherits from UserControl instead of from Page. We will declare the tree 
        properties used in our markup, and base them on three corresponding fields.</span><pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">private</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">string</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> userName;
</span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">private</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">int</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> userAge;
</span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">private</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">string</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> userCountry;

</span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">public</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">string</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> UserName
{
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">get</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> { </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">return</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> userName; }
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">set</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> { userName </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> value; }
}

</span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">public</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">int</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> UserAge
{
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">get</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> { </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">return</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> userAge; }
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">set</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> { userAge </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> value; }
}

</span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">public</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">string</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> UserCountry
{
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">get</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> { </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">return</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> userCountry; }
    </span><span class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">set</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> { userCountry </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> value; }
}</span>
</pre>
        <span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        It&#39;s all very simple and works just like a regular class. You can even add 
        methods, if you feel like it! Our UserControl is actually done now, but as you 
        may have already experienced, we can&#39;t use it yet. A UserControl can&#39;t be 
        displayed directly in the browser - it has to be included on a page. We will do 
        that in the next chapter.<br />
        <br />
        <br />
        <h1 style="margin: 0px -25px 14px; padding: 4px 15px; font-family: Georgia, Arial, Helvetica, sans-serif; font-size: 2em; color: rgb(154, 192, 70); border-bottom: 1px dotted rgb(192, 192, 192); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            Using a UserControl</h1>
        <br />
        We created a UserControl, and now we will try using it for the first time. Pick 
        a page in your project, or simply create a new one for the purpose, and open it. 
        The first thing we have to do, is declare our UserControl. It can be done either 
        in each page where it&#39;s used, or globally in the web.config file. There is no 
        performance difference, but when declaring UserControls in the web.config file, 
        the controls have to reside in a different directory than the page(s) using it.<span 
            class="Apple-converted-space">&nbsp;</span><br 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        For now, let&#39;s just declare it within the page. Add the following line below the 
        standard page declaration:<pre 
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
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">UserInfoBoxControl</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> Src</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">~/UserInfoBoxControl.ascx</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span>
</pre>
        Make sure that the<span class="Apple-converted-space">&nbsp;</span><b 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">src</b><span 
            class="Apple-converted-space">&nbsp;</span>value matches the path to your 
        UserControl file. Now you may use the UserControl in your page, like any other 
        control. For instance, like this:<pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">My:UserInfoBoxControl </span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);">runat</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;server&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> ID</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;MyUserInfoBoxControl&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;</span>
</pre>
        If you look at the page now, you will see our UserControl in action, although 
        the information will be a bit... limited. We will have to set a value for the 
        properties we defined, for things to get just a bit more interestingly. 
        Fortunately, it&#39;s very easy:<pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">My:UserInfoBoxControl </span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);">runat</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;server&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> ID</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;MyUserInfoBoxControl&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> UserName</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;M Dutt&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> UserAge</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;11&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> UserCountry</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;India&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;</span>
</pre>
        You see, every public or protected member can be accessed declaretively, 
        allowing easy access to them when we use our control. However, with this 
        specific UserControl, chances are that you will be receiving the information 
        from an external resource, like a database, and then populating the UserControl 
        from there. This usually involves the CodeBehind of the page, so how can we do 
        that? Pretty simple, actually. In the CodeBehind of the page, try something like 
        this:<pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">protected</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-ReservedWordStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">void</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> Page_Load(</span><span 
            class="C#-NativeTypeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">object</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> sender, EventArgs e)
{
    </span><span class="C#-CommentDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 128, 0);">//</span><span 
            class="C#-CommentDefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 128, 0);"> These values can come from anywhere, but right now, we just hardcode them</span><span 
            class="C#-CommentDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 128, 0);">
</span><span class="C#-DefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">    MyUserInfoBoxControl.UserName </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-StringDefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">Madhavendra</span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">;
    MyUserInfoBoxControl.UserAge </span><span class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-NumberStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">22</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">;
    MyUserInfoBoxControl.UserCountry </span><span class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;India&quot;</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">;
}</span>
</pre>
        <h2 style="margin: 14px 0px; padding: 0px; font-family: Georgia, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            Loading dynamically</h2>
        Sometimes you may wish to add UserControls to your page dynamically instead of 
        declaring them. It&#39;s actually quite simple too. You need an existing control 
        where you can add the UserControl to, for instance a Panel. If there&#39;s no 
        logical control on your page to add it to, you may create one for the purpose - 
        the PlaceHolder control is for situations just like that.<span 
            class="Apple-converted-space">&nbsp;</span><br 
            style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 12.96px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        On your page, define it like this:<pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">&lt;</span><span 
            class="HTML-TagNameStyle" 
            style="margin: 0px; padding: 0px; color: rgb(128, 0, 0);">asp:PlaceHolder </span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);">runat</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;server&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> ID</span><span 
            class="HTML-TagAttributeValueStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">=&quot;phUserInfoBox&quot;</span><span 
            class="HTML-TagAttributeStyle" 
            style="margin: 0px; padding: 0px; color: rgb(255, 0, 0);"> </span><span 
            class="HTML-TagDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">/&gt;</span>
</pre>
        In the CodeBehind of the page, we add the control like this:<pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">phUserInfoBox.Controls.Add(LoadControl(</span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-StringDefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">~/UserInfoBoxControl.ascx</span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">));</span>
</pre>
        We use the LoadControl method to instantiate the UserControl by specifying the 
        path. This is very easy, but also very anonymous - because we just use the 
        LoadControl method, we can&#39;t really use our own, custom properties. To do that, 
        we need to make .NET aware of it. On the page, add the following declaration in 
        the top:<pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">&lt;%</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;">@ Reference Control</span><span 
            class="VBScript-OperatorStyle" style="margin: 0px; padding: 0px;">=</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-StringDefaultStyle" style="margin: 0px; padding: 0px;">~/UserInfoBoxControl.ascx</span><span 
            class="VBScript-StringDelimiterStyle" style="margin: 0px; padding: 0px;">&quot;</span><span 
            class="VBScript-DefaultStyle" style="margin: 0px; padding: 0px;"> </span><span 
            class="HTML-ASPDelimiterStyle" 
            style="margin: 0px; padding: 0px; background-color: rgb(255, 255, 0); color: rgb(0, 0, 0);">%&gt;</span>
</pre>
        Now we can access the UserInfoBoxControl class like if it were a regular class, 
        which also means that we can typecast the UserControl returned by the 
        LoadControl method to this type. In the next example, we do just that, then we 
        set the properties, and at last, we add it to the PlaceHolder:<pre 
            style="margin: 15px 5px; padding: 8px; border-radius: 4px; overflow: auto; background-color: rgb(238, 238, 238); font-size: 12px; border: 1px solid rgb(238, 238, 238) !important; color: rgb(102, 102, 102); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">UserInfoBoxControl userInfoBoxControl </span><span 
            class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> (UserInfoBoxControl)LoadControl(</span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-StringDefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">~/UserInfoBoxControl.ascx</span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">);
userInfoBoxControl.UserName </span><span class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-StringDefaultStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">MD</span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">;
userInfoBoxControl.UserAge </span><span class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> 33;
userInfoBoxControl.UserCountry </span><span class="C#-OperatorStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">=</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);"> </span><span 
            class="C#-StringDelimiterStyle" 
            style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">&quot;India&quot;</span><span 
            class="C#-DefaultStyle" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0);">;
phUserInfoBox.Controls.Add(userInfoBoxControl);</span>
</pre>
        This will come in handy, for instance when you&#39;re adding multiple instances of 
        the same UserControl to a single page, because you can do it inside a loop.</span><p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>
