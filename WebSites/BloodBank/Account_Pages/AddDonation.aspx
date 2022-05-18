<%@ Page Title="" Language="C#" MasterPageFile="~/Account_Pages/LoggedInMasterPage.master" AutoEventWireup="true" CodeFile="AddDonation.aspx.cs" Inherits="Account_Pages_AddDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style18 {
        width: 233px;
        text-align: left;
    }
    .auto-style19 {
        text-align: left;
        width: 187px;
        height: 32px;
    }
    .auto-style20 {
        height: 32px;
    }
    .auto-style21 {
        text-align: left;
        width: 233px;
        height: 40px;
    }
    .auto-style22 {
        height: 33px;
    }
    .auto-style23 {
        height: 40px;
        text-align: left;
    }
    .auto-style24 {
        text-align: left;
        width: 233px;
        height: 41px;
    }
    .auto-style25 {
        height: 41px;
        text-align: left;
    }
    .auto-style27 {
        text-align: left;
        width: 233px;
        height: 38px;
    }
    .auto-style28 {
        height: 38px;
        text-align: left;
    }
    .auto-style29 {
        width: 100%;
        height: 245px;
    }
        .auto-style33 {
            height: 41px;
            text-align: left;
            width: 290px;
            color: #800000;
            font-size: large;
        }
        .auto-style34 {
            height: 40px;
            text-align: left;
            color: #006600;
            text-decoration: none;
        }
        .auto-style35 {
            width: 330px;
            text-align: left;
        }
        .auto-style36 {
            height: 76px;
            text-align: left;
            color: #006600;
            text-decoration: none;
        }
        .auto-style37 {
            text-align: left;
            width: 233px;
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <br />
    <table class="auto-style29" style="padding-left: 50px">
        <tr>
            <td class="auto-style37">
            </td>
            <td class="auto-style36"><strong>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style30" style="color: #800000; font-size: large; text-decoration: underline;" Text="Add a New Donation"></asp:Label>
                <br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:Label ID="Label2" runat="server" Text="Date of Donation:"></asp:Label>
            </td>
            <strong>
            <td class="auto-style34">
                <asp:TextBox ID="DateBox" runat="server" BorderColor="Maroon" BorderWidth="2px" Width="241px"></asp:TextBox>
            </td>
            </strong>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Label ID="Label3" runat="server" Text="Donated To:"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:DropDownList ID="DonatedList" runat="server" Width="240px">
                    <asp:ListItem>Select One..</asp:ListItem>
                    <asp:ListItem>Directly to Patient</asp:ListItem>
                    <asp:ListItem>To a Blood Bank</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label7" runat="server" Text="Pateint's Name (If any): "></asp:Label>
            </td>
            <td class="auto-style28"><strong>
                <asp:TextBox ID="NameBox" runat="server" Width="240px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label6" runat="server" Text="Recipient's Address:"></asp:Label>
            </td>
            <td class="auto-style35"><strong>
                <asp:TextBox ID="AddressBox" runat="server" Height="139px" Width="74%" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style35">
                <br />
                <asp:Button ID="AddButton" runat="server" Height="33px" OnClick="AddButton_Click" Text="Add" Width="131px" />
            </td>
        </tr>
    </table>
    <br />
    </strong>
    <br />
    <br />
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

