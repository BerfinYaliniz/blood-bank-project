<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewDonorsList.aspx.cs" Inherits="AdminPages_AdminViewDonorsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            font-size: x-large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <div class="auto-style12">
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Donor's List"></asp:Label>
            <br />
            </strong>
           
            <br />
        </div>
        <div class="auto-style12">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DonorID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DonorID" HeaderText="DonorID" InsertVisible="False" ReadOnly="True" SortExpression="DonorID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                    <asp:HyperLinkField DataNavigateUrlFields="DonorID" DataNavigateUrlFormatString="ViewFullDonorProfile.aspx?DonorID={0}" HeaderText="Profile" Text="View" />
                                       
                                        <asp:HyperLinkField DataNavigateUrlFields="DonorID" DataNavigateUrlFormatString="" HeaderText="Delete" Text="View" />


                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#b89595" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#b89595" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#b89595" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT [DonorID], [Name], [BloodGroup] FROM [RegisteredDonor]"></asp:SqlDataSource>
        <br />
        <br />
         <table class="auto-style13">
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="BackButton" runat="server" BackColor="#990000" OnClick="BackButton_Click" Text="Back" Width="100px" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>

