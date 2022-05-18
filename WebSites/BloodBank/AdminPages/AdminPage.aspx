<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
            color: #800000;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style13 {
            width: 100%;
            height: 11px;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style14">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Request List Page"></asp:Label>
            </strong>
            <br />
              <br />
          
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [RNo], [Email], [DateOfRequest] FROM [RequestStatus] ORDER BY [RNo] DESC"></asp:SqlDataSource>
        <div class="auto-style14">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RNo" HeaderText="RNo" InsertVisible="False" ReadOnly="True" SortExpression="RNo" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="DateOfRequest" HeaderText="DateOfRequest" SortExpression="DateOfRequest" />
                    <asp:HyperLinkField DataNavigateUrlFields="RNo" DataNavigateUrlFormatString="ViewRequest.aspx?RNo={0}"  HeaderText="View Details" Text="View" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#b89595" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#b89595" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#b89595" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#b89595" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <br />
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

