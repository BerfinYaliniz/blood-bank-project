<%@ Page Title="" Language="C#" MasterPageFile="~/Account_Pages/LoggedInMasterPage.master" AutoEventWireup="true" CodeFile="DonationHistory.aspx.cs" Inherits="Account_Pages_DonationHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style16 {
        color: #800000;
        font-size: large;
    }
        .auto-style26 {
            text-align: center;
        }
        .auto-style27 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <div class="auto-style26">
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text="Donation History"></asp:Label>
            <br />
            <br />
            </strong>
        </div>
        <asp:Panel ID="Panel2" runat="server">
            <div class="auto-style27">
                <asp:GridView ID="DonationGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
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
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        </asp:Panel>
    <br />
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

