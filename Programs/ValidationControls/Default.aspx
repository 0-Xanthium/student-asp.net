<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
            .style1
        {
            width: 47%;
                background-color: #FFFFCC;
            }
        .style2
        {
        }
        .style4
        {
                width: 112px;
            }
            .style5
            {
                height: 30px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                        ErrorMessage="Name field is required" ForeColor="Red" Display="Dynamic">* Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                        ErrorMessage="Passowrd field is required" ForeColor="Red" 
                        Display="Dynamic">* Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label3" runat="server" Text="Confirm password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                        ControlToValidate="txtconfirmpassword" ErrorMessage="Both passwords must match"
                        ForeColor="Red" Display="Dynamic">* Not matching</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtage"
                        Display="Dynamic" ErrorMessage="Age field is required" ForeColor="Red">* Required</asp:RequiredFieldValidator>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage"
                        ErrorMessage="Age should be in between 18 to 30" ForeColor="Red" MaximumValue="30"
                        MinimumValue="18" Display="Dynamic">* Range</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style4">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Email field is required" ForeColor="Red" Display="Dynamic">* Required</asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Invalid Email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Display="Dynamic">* Invalid</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server" Text="Even Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtnumber"
                        ErrorMessage="Number must be even" ForeColor="Red" 
                        OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic">* Even</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="3" align="center">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                        Height="114px" Width="404px" />
                </td>
            </tr>
        </table>
    </div>
    </form>


    <h1 class="title" 
        style="color: rgb(0, 0, 0); font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 2.769em; line-height: 1.167; font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        How to: Control Validation Error Message Display for ASP.NET Server Controls</h1>
    <div class="lw_vs" 
        style="position: relative; margin-top: -8px; margin-bottom: 35px; padding-bottom: 2px; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <div id="curversion" 
            style="float: left; font-size: 13px; color: rgb(93, 93, 93);">
            <strong>Visual Studio 2010</strong></div>
        <div id="versionclick" style="float: left;">
            <div id="vsseperator" class="cl_lw_vs_seperator" 
                style="background: url('https://msdn.microsoft.com/Areas/Epx/Content/Images/ImageSprite.png?v=636409538097047898') no-repeat -552px -3px; width: 1px; height: 17px; overflow: hidden; margin-left: 10px; float: left;">
            </div>
            <div style="float: left;">
                <div style="float: left;">
                    <a id="vsLink" aria-expanded="false" aria-label="Other Versions" 
                        href="javascript:void(0)" role="button" 
                        style="text-decoration: none; color: rgb(0, 112, 159); margin-left: 10px; margin-right: 4px; font-size: 1em;">
                    Other Versions</a></div>
                <div class="cl_vs_arrow clip10x10" 
                    style="position: relative; overflow: hidden; width: 10px; height: 10px; margin-top: 5px; margin-right: 5px; cursor: pointer; float: left;">
                    <img id="vsArrow" alt="" class="cl_lw_vs_arrow" 
                        src="https://i-msdn.sec.s-msft.com/Areas/Epx/Content/Images/ImageSprite.png?v=636409538097047898" 
                        style="border: 0px; top: -3px; left: -560px; position: absolute; margin: 0px; padding: 0px; width: auto; height: auto; max-width: none;" /></div>
            </div>
        </div>
    </div>
    <div style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; clear: both;">
    </div>
    <div id="mainSection" 
        style="clear: both; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <div id="mainBody">
            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
            </p>
            <div class="introduction">
                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                    In Microsoft Visual Web Developer, you can display error message text in four 
                    different ways, as described in the following table.</p>
                <div class="caption">
                </div>
                <div class="tableSection">
                    <div class="contentTableWrapper" style="overflow-x: auto;">
                        <table responsive="true" 
                            style="border-collapse: collapse; margin-bottom: 20px; margin-top: 20px; word-break: break-word; border: 1px solid rgb(187, 187, 187);" 
                            summary="table">
                            <tr responsive="true">
                                <th scope="col" 
                                    style="padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        Display method</p>
                                </th>
                                <th scope="col" 
                                    style="padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        Description</p>
                                </th>
                            </tr>
                            <tr>
                                <td data-th="Display method" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        Inline</p>
                                </td>
                                <td data-th="Description" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        The error message appears next to the control, in the place where the validation 
                                        control is located.</p>
                                </td>
                            </tr>
                            <tr>
                                <td data-th="Display method" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        Summary</p>
                                </td>
                                <td data-th="Description" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        The error message is displayed in a separate summary of all errors, which is 
                                        available only when the user submits the page. Optionally, the error message can 
                                        appear in a message box, but this option is available only in browsers that 
                                        support dynamic HTML (DHTML).</p>
                                </td>
                            </tr>
                            <tr>
                                <td data-th="Display method" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        Inline and summary</p>
                                </td>
                                <td data-th="Description" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        The error message can be different in the summary and inline. You can use this 
                                        option to show a shorter error message inline, with more detail in the summary, 
                                        or to show an error glyph next to the input field and an error message in the 
                                        summary.</p>
                                </td>
                            </tr>
                            <tr>
                                <td data-th="Display method" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        Custom</p>
                                </td>
                                <td data-th="Description" 
                                    style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                    <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                        You can create your own error message display. For more information, see<span>&nbsp;<a 
                                            href="https://msdn.microsoft.com/en-us/library/3w0bs977(v=vs.100).aspx" 
                                            style="text-decoration: none; color: rgb(0, 112, 159);">How to: Display 
                                        Server Side Custom Validation Messages for ASP.NET Server Controls</a></span>.</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                    If you want to display summarized error messages, you need to add a control to 
                    the page.</p>
            </div>
            <h3 class="procedureSubHeading" 
                style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI Semibold&quot;, &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 1.231em; font-weight: normal; margin: 0px; padding-bottom: 5px; padding-top: 5px;">
                To display summarized error messages</h3>
            <div class="subSection">
                <ol>
                    <li>
                        <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                            Add a<span>&nbsp;<a 
                                href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary(v=vs.100).aspx" 
                                style="text-decoration: none; color: rgb(0, 112, 159);">ValidationSummary</a>&nbsp;</span>control 
                            to the page at the location where you want to display the collected error 
                            messages.</p>
                    </li>
                    <li>
                        <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                            Set the<span>&nbsp;<span class="input" style="font-weight: 700;">ErrorMessage</span>&nbsp;</span>and<span>&nbsp;<span 
                                class="input" style="font-weight: 700;">Display</span>&nbsp;</span>properties of 
                            the individual validation controls.</p>
                    </li>
                    <li>
                        <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                            Set the<span>&nbsp;<a 
                                href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary.displaymode(v=vs.100).aspx" 
                                style="text-decoration: none; color: rgb(0, 112, 159);">DisplayMode</a>&nbsp;</span>property 
                            of the summary control to format the error messages, using one of the following 
                            values that are defined in the<span>&nbsp;<a 
                                href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummarydisplaymode(v=vs.100).aspx" 
                                style="text-decoration: none; color: rgb(0, 112, 159);">ValidationSummaryDisplayMode</a>&nbsp;</span>enumeration:</p>
                        <div class="caption">
                        </div>
                        <div class="tableSection">
                            <div class="contentTableWrapper" style="overflow-x: auto;">
                                <table responsive="true" 
                                    style="border-collapse: collapse; margin-bottom: 20px; margin-top: 20px; word-break: break-word; border: 1px solid rgb(187, 187, 187);" 
                                    summary="table">
                                    <tr responsive="true">
                                        <th scope="col" 
                                            style="padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                Value</p>
                                        </th>
                                        <th scope="col" 
                                            style="padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                Display</p>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td data-th="Value" 
                                            style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                <span><span class="input" style="font-weight: 700;">BulletList</span></span></p>
                                        </td>
                                        <td data-th="Display" 
                                            style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                (Default) Each error message appears as a bulleted item.</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td data-th="Value" 
                                            style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                <span><span class="input" style="font-weight: 700;">List</span></span></p>
                                        </td>
                                        <td data-th="Display" 
                                            style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                Each error message appears on its own line.</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td data-th="Value" 
                                            style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                <span><span class="input" style="font-weight: 700;">SingleParagraph</span></span></p>
                                        </td>
                                        <td data-th="Display" 
                                            style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                Each error message appears as a sentence in a paragraph.</p>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                            If you are associating individual validation controls with validation groups, 
                            then you will need to use one<span>&nbsp;<a 
                                href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary(v=vs.100).aspx" 
                                style="text-decoration: none; color: rgb(0, 112, 159);">ValidationSummary</a>&nbsp;</span>control 
                            for each validation group.</p>
                    </li>
                </ol>
            </div>
            <div id="sectionSection0" class="seeAlsoNoToggleSection">
                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                    To display error messages inline and as a summary, you need to set different 
                    combinations of properties in the individual validation controls.</p>
                <h3 class="procedureSubHeading" 
                    style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI Semibold&quot;, &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 1.231em; font-weight: normal; margin: 0px; padding-bottom: 5px; padding-top: 5px;">
                    To display inline and summarized error messages</h3>
                <div class="subSection">
                    <ol>
                        <li>
                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                Add a<span>&nbsp;<a 
                                    href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary(v=vs.100).aspx" 
                                    style="text-decoration: none; color: rgb(0, 112, 159);">ValidationSummary</a>&nbsp;</span>control 
                                as described in the previous procedure.</p>
                        </li>
                        <li>
                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                Set the<span>&nbsp;<span class="input" style="font-weight: 700;">ErrorMessage</span></span>,<span>&nbsp;<span 
                                    class="input" style="font-weight: 700;">Text</span></span>, and<span>&nbsp;<span 
                                    class="input" style="font-weight: 700;">Display</span>&nbsp;</span>properties of 
                                the individual validation controls according to the following table:</p>
                            <div class="caption">
                            </div>
                            <div class="tableSection">
                                <div class="contentTableWrapper" style="overflow-x: auto;">
                                    <table responsive="true" 
                                        style="border-collapse: collapse; margin-bottom: 20px; margin-top: 20px; word-break: break-word; border: 1px solid rgb(187, 187, 187);" 
                                        summary="table">
                                        <tr responsive="true">
                                            <th scope="col" 
                                                style="padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Option</p>
                                            </th>
                                            <th scope="col" 
                                                style="padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Requires<span>&nbsp;<span class="input" style="font-weight: 700;">ValidationSummary</span></span>control</p>
                                            </th>
                                            <th scope="col" 
                                                style="padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Property settings on validation control</p>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td data-th="Option" 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Inline only</p>
                                            </td>
                                            <td data-th="Requires ValidationSummary control " 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    No</p>
                                            </td>
                                            <td data-th="Property settings on validation control" 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                                    <span><span class="input" style="font-weight: 700;">Display</span>&nbsp;</span>=<span>&nbsp;<span 
                                                        class="input" style="font-weight: 700;">Static</span>&nbsp;</span>or<span>&nbsp;<span 
                                                        class="input" style="font-weight: 700;">Dynamic</span></span></p>
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    <span><span class="input" style="font-weight: 700;">ErrorMessage</span>&nbsp;</span>=<span>&nbsp;</span><span 
                                                        class="parameter" style="font-style: italic;">&lt;error text&gt;</span>or<span>&nbsp;<span 
                                                        class="input" style="font-weight: 700;">Text</span>&nbsp;</span>=<span>&nbsp;</span><span 
                                                        class="parameter" style="font-style: italic;">&lt;error text&gt;</span></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td data-th="Option" 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Summary only (including optional message box)</p>
                                            </td>
                                            <td data-th="Requires ValidationSummary control " 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Yes</p>
                                            </td>
                                            <td data-th="Property settings on validation control" 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                                    <span><span class="input" style="font-weight: 700;">Display</span>&nbsp;</span>=<span>&nbsp;<span 
                                                        class="input" style="font-weight: 700;">None</span></span></p>
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    <span><span class="input" style="font-weight: 700;">ErrorMessage</span>&nbsp;</span>=<span>&nbsp;</span><span 
                                                        class="parameter" style="font-style: italic;">&lt;error text&gt;</span>or<span>&nbsp;<span 
                                                        class="input" style="font-weight: 700;">Text</span>&nbsp;</span>=<span>&nbsp;</span><span 
                                                        class="parameter" style="font-style: italic;">&lt;error text&gt;</span></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td data-th="Option" 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Inline and summary (including optional message box)</p>
                                            </td>
                                            <td data-th="Requires ValidationSummary control " 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    Yes</p>
                                            </td>
                                            <td data-th="Property settings on validation control" 
                                                style="padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top; min-width: 80px; border: 1px solid rgb(187, 187, 187);">
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                                    <span><span class="input" style="font-weight: 700;">Display</span>&nbsp;</span>=<span>&nbsp;<span 
                                                        class="input" style="font-weight: 700;">Static</span>&nbsp;</span>or<span>&nbsp;<span 
                                                        class="input" style="font-weight: 700;">Dynamic</span></span></p>
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                                    <span><span class="input" style="font-weight: 700;">ErrorMessage</span>&nbsp;</span>=<span>&nbsp;</span><span 
                                                        class="parameter" style="font-style: italic;">&lt;error text for summary&gt;</span></p>
                                                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                                    <span><span class="input" style="font-weight: 700;">Text</span>&nbsp;</span>=<span>&nbsp;</span><span 
                                                        class="parameter" style="font-style: italic;">&lt;inline error text or glyph&gt;</span></p>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </li>
                    </ol>
                </div>
                <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                    If the client is running a browser that supports DHTML, summarized error 
                    messages can also appear in a message box.</p>
                <h3 class="procedureSubHeading" 
                    style="color: rgb(0, 0, 0); font-family: &quot;Segoe UI Semibold&quot;, &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Verdana, Arial, Helvetica, sans-serif; font-size: 1.231em; font-weight: normal; margin: 0px; padding-bottom: 5px; padding-top: 5px;">
                    To display summarized error messages in a message box</h3>
                <div class="subSection">
                    <ol>
                        <li>
                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                Set the<span>&nbsp;<a 
                                    href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary.showmessagebox(v=vs.100).aspx" 
                                    style="text-decoration: none; color: rgb(0, 112, 159);">ShowMessageBox</a>&nbsp;</span>property 
                                of the<span>&nbsp;<a 
                                    href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary(v=vs.100).aspx" 
                                    style="text-decoration: none; color: rgb(0, 112, 159);">ValidationSummary</a>&nbsp;</span>control 
                                to<span>&nbsp;<span class="input" style="font-weight: 700;">true</span></span>.</p>
                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                When the user submits the page, errors are displayed in both the<span>&nbsp;<a 
                                    href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary(v=vs.100).aspx" 
                                    style="text-decoration: none; color: rgb(0, 112, 159);">ValidationSummary</a>&nbsp;</span>control 
                                and the message box.</p>
                        </li>
                        <li>
                            <p style="color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                                To display summarized error messages only in a message box, set the<span>&nbsp;<a 
                                    href="https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.validationsummary.showsummary(v=vs.100).aspx" 
                                    style="text-decoration: none; color: rgb(0, 112, 159);">ShowSummary</a>&nbsp;</span>property 
                                to<span>&nbsp;<span class="input" style="font-weight: 700;">false</span></span>.</p>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
