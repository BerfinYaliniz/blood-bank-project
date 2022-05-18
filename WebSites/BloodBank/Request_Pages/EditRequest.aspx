<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="EditRequest.aspx.cs" Inherits="EditRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            color: #800000;
            font-size: large;
        }
        .auto-style12 {
            text-align: left;
            width: 96px;
            height: 41px;
        }
        .auto-style14 {
            width: 387px;
            height: 41px;
        }
        .auto-style16 {
            width: 387px;
            height: 40px;
        }
        .auto-style17 {
            width: 96px;
            height: 40px;
        }
        .auto-style18 {
            height: 40px;
            width: 5336px;
        }
        .auto-style25 {
            color: #000000;
        }
        .auto-style26 {
            text-align: center;
        }
        .auto-style28 {
            height: 41px;
            width: 5336px;
        }
        .auto-style29 {
            margin-left: 0px;
        }
        .auto-style30 {
            width: 478px;
        }
        .auto-style31 {
            font-size: large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <div class="auto-style26">
            <strong><span class="auto-style7">
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style21" style="color: #800000; font-size: large;" Text="Requester Login"></asp:Label>
            <br />
            <br />
            <table align="center" class="auto-style30">
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style25" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="LoginEmailText" runat="server" CssClass="auto-style29" Width="266px"></asp:TextBox>
                    </td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style25" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="LoginPassText" runat="server" TextMode="Password" Width="266px"></asp:TextBox>
                    </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td>
                        &nbsp;
                        <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" Width="148px" />
                    </td>
                    <td class="auto-style28"></td>
                </tr>
            </table>
            <br />
            </span></strong>
        </div>
    </asp:Panel>
    <br />
    <div class="auto-style26">
    <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <br />
        <strong>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style31" Text="List of Request "></asp:Label>
        </strong>
        <br />
        <br />
        <asp:GridView ID="StatusGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:Panel ID="ListShowPanel" runat="server" Height="42px">
            <asp:Button ID="ShowButton0" runat="server" OnClick="ShowButton_Click" Text="Show donors List" />
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Button ID="AddButton" runat="server" OnClick="AddButton_Click" Text="Add New Request" />
                <asp:Button ID="Button2" runat="server" OnClick="deleteButton_Click" Text="Delete Request" />

        &nbsp;&nbsp;&nbsp;<asp:Button ID="LogOutButton" runat="server" OnClick="LogOutButton_Click" Text="Log Out" />
        <br />
        <br />
    </asp:Panel>
    </div>
    <br />
    </asp:Content>

