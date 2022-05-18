<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="ViewDonorProfile.aspx.cs" Inherits="Account_Pages_ViewDonorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            font-size: large;
            margin-left: 226px;
            margin-top: 0px;
        }
        .auto-style14 {
            font-size: x-large;
            color: #800000;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            margin-left: 309px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style12">
        <div class="auto-style12">
            <br />
            <div class="auto-style12">
            <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
                <br />
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text="Details of the Donor"></asp:Label>
                </strong>
                <br />
                <br />
                <div class="auto-style15">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"  BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style13" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="95px" HorizontalAlign="Center" Width="57%">
                        <AlternatingRowStyle  />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="BloodGroup" />
                            <asp:BoundField DataField="ContactNo" HeaderText="Contact No" SortExpression="ContactNo" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                            <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                            <asp:BoundField DataField="Smoker" HeaderText="Smoker" SortExpression="Smoker" />
                            <asp:BoundField DataField="Addict" HeaderText="Addict" SortExpression="Addict" />
                            <asp:BoundField DataField="DateofBirth" HeaderText="Date of Birth" SortExpression="DateofBirth" />
                            <asp:BoundField DataField="DonationStatus" HeaderText="Donation Status" SortExpression="DonationStatus" />
                            <asp:BoundField DataField="Bio" HeaderText="Bio" SortExpression="Bio" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT RegisteredDonor.Name, RegisteredDonor.Email, RegisteredDonor.BloodGroup, RegisteredDonor.ContactNo, DonorDetails.Address, DonorDetails.Gender, DonorDetails.Weight, DonorDetails.Height, DonorDetails.Smoker, DonorDetails.Addict, DonorDetails.DateofBirth, DonorDetails.DonationStatus, DonorDetails.Bio FROM RegisteredDonor INNER JOIN DonorDetails ON RegisteredDonor.DonorID = DonorDetails.DonorID WHERE (RegisteredDonor.Email = @Email)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Email" QueryStringField="Email" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <strong>
                <asp:Label ID="Label2" runat="server"  CssClass="auto-style14" Text="Donation History"></asp:Label>
                </strong>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style16" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="612px">
                    <AlternatingRowStyle  />
                    <Columns >
                        <asp:BoundField DataField="DonationDate" HeaderText="DonationDate" SortExpression="DonationDate" />
                        <asp:BoundField DataField="Recipient" HeaderText="Recipient" SortExpression="Recipient" />
                        <asp:BoundField DataField="RecipientName" HeaderText="RecipientName" SortExpression="RecipientName" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="#b89595" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT Records.DonationDate, Records.Recipient, Records.RecipientName FROM Records INNER JOIN RegisteredDonor ON Records.DonorID = RegisteredDonor.DonorID WHERE (RegisteredDonor.Email = @Email)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Email" QueryStringField="Email" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
            </div>
        </div>
    </p>
</asp:Content>

