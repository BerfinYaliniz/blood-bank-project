<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="RequestForBlood.aspx.cs" Inherits="RequestForBlood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
        }
        .auto-style15 {
            width: 91px;
        }
        .auto-style17 {
            left: 0px;
            top: 0px;
            width: 1008px;
        }
        .auto-style18 {
            width: 299px;
            text-align: left;
        }
        .auto-style20 {
            width: 304px;
            text-align: left;
        }
        .auto-style21 {
            width: 304px;
            text-align: left;
            font-size: large;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            font-size: medium;
        }
        .auto-style24 {
            left: 0px;
            top: 0px;
            width: 994px;
            color: #CC0000;
        }
        .auto-style25 {
            width: 304px;
            text-align: left;
            height: 50px;
        }
        .auto-style27 {
            width: 299px;
            text-align: left;
            height: 50px;
        }
        .auto-style28 {
            width: 304px;
            text-align: left;
            height: 33px;
        }
        .auto-style32 {
            left: 0px;
            top: 0px;
            width: 1008px;
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style33 {
            width: 503px;
            height: 50px;
            text-align: center;
        }
        .auto-style34 {
            width: 503px;
            text-align: center;
        }
        .auto-style35 {
            width: 304px;
            text-align: left;
            height: 111px;
        }
        .auto-style36 {
            width: 503px;
            height: 111px;
            text-align: center;
        }
        .auto-style37 {
            width: 299px;
            text-align: left;
            height: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
        &nbsp;<table class="auto-style17" align="center">
            <tr>
                <td class="auto-style35">
                </td>
                <td class="auto-style36">
                    <strong>
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style32" style="color: #800000" Text="Make a Request For Blood:"></asp:Label>
                    <br />
                    </strong>
                </td>
                <td class="auto-style37">
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="NameText" runat="server" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23" Width="346px"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameText" CssClass="auto-style24" ErrorMessage="*Enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="Label2" runat="server" Text="Contact No :" CssClass="auto-style22"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="ContactText" runat="server" Width="346px" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ContactText" CssClass="auto-style24" ErrorMessage="*Enter Contact No"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28" style="height: 50px">
                    <asp:Label ID="Label3" runat="server" Text="Required Blood Group :" CssClass="auto-style22"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:DropDownList ID="BRDropDown" runat="server" Height="23px" Width="193px" CssClass="auto-style23">
                        <asp:ListItem>Select Group</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BRDropDown" CssClass="auto-style24" ErrorMessage="*Select a group"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="height: 50px">
                    <asp:Label ID="Label4" runat="server" Text="Amount (Unit/Bag):" CssClass="auto-style22"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="AmountText" runat="server" Width="346px" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AmountText" CssClass="auto-style24" ErrorMessage="*Amount Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="height: 50px">
                    <asp:Label ID="Label5" runat="server" Text="Patient's Location : " CssClass="auto-style22"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="LocationText" runat="server" Width="346px" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23"></asp:TextBox>
                </td>
                <td class="auto-style18" style="height: 50px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="LocationText" CssClass="auto-style24" ErrorMessage="*Enter Location"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="height: 50px">
                    <asp:Label ID="Label6" runat="server" Text="Email :   " CssClass="auto-style22"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="EmailText" runat="server" TextMode="Email" Width="346px" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23"></asp:TextBox>
                </td>
                <td class="auto-style18" style="height: 50px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20" style="height: 50px">
                    <asp:Label ID="Label7" runat="server" Text="Password :    " CssClass="auto-style22"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="PasswordText" runat="server" TextMode="Password" Width="346px" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23"></asp:TextBox>
                </td>
                <td class="auto-style18" style="height: 50px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" style="height: 50px">Blood Requisition Letter :</td>
                <td class="auto-style33">
                    <asp:FileUpload ID="BRImageUpload" runat="server" Width="346px" CssClass="auto-style23" />
                </td>
                <td class="auto-style18" style="height: 50px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="BRImageUpload" CssClass="auto-style24" ErrorMessage="*Requisition Letter is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Button ID="SubmitButton" runat="server" OnClick="Button1_Click" Text="Submit Request" Width="211px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" class="auto-style15" type="reset" value="reset" />
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>

