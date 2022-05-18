<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonorsByDistrict.aspx.cs" Inherits="DonorsByDistrict" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style8">
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Blood Donors List"  Height="42px" Width="100%"></asp:Label>
        </strong>
     <br />
        &nbsp;Search Donor: &nbsp;<asp:DropDownList ID="DistrictList" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="237px" AutoPostBack="True">
                <asp:ListItem>Select District</asp:ListItem>
                    <asp:ListItem>Turkey</asp:ListItem>
                    <asp:ListItem>England</asp:ListItem>
                    <asp:ListItem>Barguna</asp:ListItem>
                    <asp:ListItem>Barisal</asp:ListItem>
                    <asp:ListItem>Bhola</asp:ListItem>
                    <asp:ListItem>Bogra</asp:ListItem>
                    <asp:ListItem>Brahmanbaria</asp:ListItem>
                    <asp:ListItem>Chandpur</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Chuadanga</asp:ListItem>
                    <asp:ListItem>Comilla</asp:ListItem>
                    <asp:ListItem>Cox&#39;s Bazar</asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Dinajpur</asp:ListItem>
                    <asp:ListItem>Faridpur</asp:ListItem>
                
        </asp:DropDownList>
    &nbsp;&nbsp;
        <asp:Button ID="ResetButton" runat="server" OnClick="ResetButton_Click" Text="Reset Search" />
&nbsp;
    </p>
    <asp:Panel ID="Panel2" runat="server">
        <asp:SqlDataSource ID="DistrictData" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT [Name], [Email], [District], [BloodGroup], [ContactNo] FROM [RegisteredDonor] WHERE ([District] = @District)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DistrictList" Name="District" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="DistrictGrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="DistrictData" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            </Columns>
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
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AllData" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#b89595" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
      
        <br />
        <asp:SqlDataSource ID="AllData" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT [Name], [Email], [District], [BloodGroup], [ContactNo] FROM [RegisteredDonor]"></asp:SqlDataSource>
    </asp:Panel>
   
    <p>
        &nbsp;</p>
</asp:Content>

