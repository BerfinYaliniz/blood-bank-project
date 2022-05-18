<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="showList.aspx.cs" Inherits="Request_Pages_showList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            color: #800000;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderWidth="2px" Height="400px">
        <div class="auto-style13">
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text="Search for Donors:"></asp:Label>
            </strong>
            <br />
            <br />
            &nbsp; <strong><span class="auto-style7">
            <asp:DropDownList ID="DistrictList" runat="server" AutoPostBack="True" Width="237px">
                <asp:ListItem>Select District</asp:ListItem>
                <asp:ListItem>Bandarban</asp:ListItem>
                <asp:ListItem>Bagerhat</asp:ListItem>
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
                <asp:ListItem>Feni</asp:ListItem>
                <asp:ListItem>Gaibandha</asp:ListItem>
                <asp:ListItem>Gazipur</asp:ListItem>
                <asp:ListItem>Gopalganj</asp:ListItem>
                <asp:ListItem>Habiganj</asp:ListItem>
                <asp:ListItem>Jamalpur</asp:ListItem>
                <asp:ListItem>Jessore</asp:ListItem>
                <asp:ListItem>Jhalokati</asp:ListItem>
                <asp:ListItem>Jhenaidah</asp:ListItem>
                <asp:ListItem>Joypurhat</asp:ListItem>
                <asp:ListItem>Khagrachhari</asp:ListItem>
                <asp:ListItem>Khulna</asp:ListItem>
                <asp:ListItem>Kishoreganj</asp:ListItem>
                <asp:ListItem>Kurigram</asp:ListItem>
                <asp:ListItem>Kushtia</asp:ListItem>
                <asp:ListItem>Lakshmipur</asp:ListItem>
                <asp:ListItem>Lalmonirhat</asp:ListItem>
                <asp:ListItem>Madaripur</asp:ListItem>
                <asp:ListItem>Magura</asp:ListItem>
                <asp:ListItem>Manikganj</asp:ListItem>
                <asp:ListItem>Meherpur</asp:ListItem>
                <asp:ListItem>Moulvibazar</asp:ListItem>
                <asp:ListItem>Munshiganj</asp:ListItem>

            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            &nbsp; &nbsp;&nbsp;
            <asp:DropDownList ID="StatusList" runat="server" Height="23px" Width="193px">
                <asp:ListItem>All Status</asp:ListItem>
                <asp:ListItem>Available</asp:ListItem>
                <asp:ListItem>Not Available</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp; &nbsp;<asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ResetButton" runat="server" OnClick="ResetButton_Click" Text="Reset Search" />
            <br />
            </span></strong>
            <br />
        </div>
        <asp:Panel ID="SearchedPanel" runat="server">
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT RegisteredDonor.Name, RegisteredDonor.Email, RegisteredDonor.District, RegisteredDonor.BloodGroup, RegisteredDonor.ContactNo, DonorDetails.DonationStatus FROM RegisteredDonor INNER JOIN DonorDetails ON RegisteredDonor.DonorID = DonorDetails.DonorID WHERE (RegisteredDonor.District = @District) OR (RegisteredDonor.BloodGroup = @BloodGroup)  OR (DonorDetails.DonationStatus = @DonationStatus)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DistrictList" Name="District" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="BRDropDown" Name="BloodGroup" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="StatusList" Name="DonationStatus" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <div class="auto-style13">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                        <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                        <asp:BoundField DataField="DonationStatus" HeaderText="DonationStatus" SortExpression="DonationStatus" />
                        <asp:HyperLinkField DataNavigateUrlFields="Email" DataNavigateUrlFormatString="ViewDonorProfile.aspx?Email={0}" HeaderText="Profile" Text="View" />
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
            </div>
        </asp:Panel>
        <strong><span class="auto-style7">
        <br />
        </span>
        <asp:Panel ID="AllListPanel" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT RegisteredDonor.Name, RegisteredDonor.Email, RegisteredDonor.District, RegisteredDonor.BloodGroup, RegisteredDonor.ContactNo, DonorDetails.DonationStatus FROM RegisteredDonor INNER JOIN DonorDetails ON RegisteredDonor.DonorID = DonorDetails.DonorID"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                    <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                    <asp:BoundField DataField="DonationStatus" HeaderText="DonationStatus" SortExpression="DonationStatus" />
                    <asp:HyperLinkField DataNavigateUrlFields="Email" DataNavigateUrlFormatString="ViewDonorProfile.aspx?Email={0}" HeaderText="Profile" Text="View" />
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
        </asp:Panel>
        </strong>
        <br />
        <br />
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>

