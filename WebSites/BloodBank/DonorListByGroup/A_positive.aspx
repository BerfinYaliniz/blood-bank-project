<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="A_positive.aspx.cs" Inherits="DonorListByGroup_A_positive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    </p>
    <p class="auto-style8">
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="A positive(+) Blood Donors List" Width="100%" style="font-size: x-large; text-decoration: underline; color: #800000;  "></asp:Label>
        </strong>
    </p>
    <div class="auto-style8">
        <asp:GridView ID="APositiveGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#b89595"  ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#b89595" ForeColor="#333333" />
            <SelectedRowStyle Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>
</asp:Content>

