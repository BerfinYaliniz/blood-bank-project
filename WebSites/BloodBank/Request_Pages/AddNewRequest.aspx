<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="AddNewRequest.aspx.cs" Inherits="Request_Pages_AddNewRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 132px;
        }
    .auto-style14 {
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server">
        <strong>
        <br />
        </strong>
        <table align="center" class="auto-style17">
            <tr>
                <td class="auto-style14" style="height: 50px">
                    &nbsp;</td>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style32" Height="102px" style="font-size: x-large; color: #800000" Text="Make a Request For Blood:" Width="105%"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14" style="height: 50px">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style22" Text="Required Blood Group :"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="BRDropDown" runat="server" CssClass="auto-style23" Height="23px" Width="193px">
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
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BRDropDown" CssClass="auto-style24" ErrorMessage="*Select a group"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="height: 50px">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style22" Text="Amount (Unit/Bag):"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="AmountText" runat="server" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23" Width="346px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AmountText" CssClass="auto-style24" ErrorMessage="*Amount Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="height: 50px">
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style22" Text="Patient's Location : "></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="LocationText" runat="server" BorderColor="Maroon" BorderWidth="2px" CssClass="auto-style23" Width="346px"></asp:TextBox>
                </td>
                <td class="auto-style14" style="height: 50px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="LocationText" CssClass="auto-style24" ErrorMessage="*Enter Location"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="height: 50px">Blood Requisition Letter :</td>
                <td class="auto-style14">
                    <asp:FileUpload ID="BRImageUpload" runat="server" CssClass="auto-style23" Width="346px" />
                </td>
                <td class="auto-style14" style="height: 50px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="BRImageUpload" CssClass="auto-style24" ErrorMessage="*Requisition Letter is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="SubmitButton" runat="server" OnClick="Button1_Click" Text="Submit Request" Width="211px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" class="auto-style12" type="reset" value="reset" />
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>

