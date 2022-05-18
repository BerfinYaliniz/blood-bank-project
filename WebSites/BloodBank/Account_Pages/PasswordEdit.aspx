<%@ Page Title="" Language="C#" MasterPageFile="~/Account_Pages/LoggedInMasterPage.master" AutoEventWireup="true" CodeFile="PasswordEdit.aspx.cs" Inherits="Account_Pages_PasswordEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style15 {
        width: 255px;
    }
    .auto-style17 {
        color: #000000;
    }
    .auto-style18 {
        width: 255px;
        text-decoration: none;
        color: #009900;
        text-align: left;
        height: 41px;
    }
    .auto-style19 {
        height: 41px;
    }
    .auto-style20 {
        width: 445px;
    }
    .auto-style21 {
        height: 41px;
        width: 227px;
    }
    .auto-style22 {
        width: 227px;
    }
    .auto-style23 {
        width: 255px;
        text-decoration: none;
        color: #009900;
        text-align: left;
        height: 40px;
    }
    .auto-style24 {
        width: 227px;
        height: 40px;
    }
    .auto-style25 {
        height: 40px;
    }
    .auto-style26 {
        width: 100%;
        height: 193px;
    }
        .auto-style27 {
            width: 255px;
            text-decoration: none;
            color: #006600;
            text-align: left;
            height: 82px;
        }
        .auto-style28 {
            height: 82px;
            width: 290px;
            color: #800000;
            font-size: large;
        }
        .auto-style29 {
            height: 82px;
            width: 227px;
        background-color: #FFFFFF;
    }
        .auto-style30 {
            font-size: large;
            color: #800000;
        text-decoration: underline;
    }
        .auto-style31 {
        width: 255px;
        text-decoration: none;
        color: #FFFFFF;
        text-align: center;
        height: 82px;
        background-color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
        <asp:panel runat="server" BorderColor="Maroon" BorderWidth="2px">
         
            <table class="auto-style26" style="padding: 50px">
                <tr>
                    <td class="auto-style31">
                    </td>
                    <td class="auto-style29">
                        <strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style30" Text="Change Password"></asp:Label>
                        <br />
                        </strong>
                    </td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style17" Text="Old Password:"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="OldPassBox" runat="server" TextMode="Password" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style17" Text="New Password:"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="NewPassBox" runat="server" TextMode="Password" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style17" Text="Re-type Password"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="ReTypePassBox" runat="server" TextMode="Password" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style22">
                        <asp:Label ID="ResponseLabel" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" Width="135px" />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

