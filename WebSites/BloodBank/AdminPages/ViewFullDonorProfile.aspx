<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="ViewFullDonorProfile.aspx.cs" Inherits="AdminPages_ViewFullDonorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            margin-left: 289px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            color: #800000;
            font-size: x-large;
        }
        .auto-style18 {
            margin-left: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <div>
        <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
            <div class="auto-style13">
                <strong>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="Donor's Profile"></asp:Label>
                <br />
                </strong>
                <br />
            </div>
            <div class="auto-style14">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BorderColor="gray" BorderWidth="1px" CellPadding="2" CssClass="auto-style12" DataKeyNames="DonorID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="82px" Width="649px">
                    <AlternatingRowStyle BackColor="gray" />
                    <EditRowStyle BackColor="gray"  />
                    <Fields>
                        <asp:BoundField DataField="DonorID" HeaderText="DonorID" InsertVisible="False" ReadOnly="True" SortExpression="DonorID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT RegisteredDonor.DonorID, RegisteredDonor.Name, RegisteredDonor.Email, RegisteredDonor.District, RegisteredDonor.ContactNo, DonorDetails.Address, DonorDetails.Gender, DonorDetails.Weight, DonorDetails.Height, DonorDetails.Smoker, DonorDetails.Addict, DonorDetails.DateofBirth, DonorDetails.DonationStatus, DonorDetails.Bio FROM RegisteredDonor INNER JOIN DonorDetails ON RegisteredDonor.DonorID = DonorDetails.DonorID WHERE (RegisteredDonor.DonorID = @DonorID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="DonorID" QueryStringField="DonorID" />
                </SelectParameters>
            </asp:SqlDataSource>
            &nbsp;<br /> <strong>
            <br />
            <br />
            </strong>
            <div class="auto-style13">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style18" DataKeyNames="ReceiptNo" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Width="605px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="ReceiptNo" HeaderText="ReceiptNo" InsertVisible="False" ReadOnly="True" SortExpression="ReceiptNo" />
                        <asp:BoundField DataField="Recipient" HeaderText="Recipient" SortExpression="Recipient" />
                        <asp:BoundField DataField="RecipientName" HeaderText="RecipientName" SortExpression="RecipientName" />
                        <asp:BoundField DataField="RecipientAddress" HeaderText="RecipientAddress" SortExpression="RecipientAddress" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>
            <strong>
            <br />
            </strong>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT Records.ReceiptNo, Records.Recipient, Records.RecipientName, Records.RecipientAddress FROM Records INNER JOIN RegisteredDonor ON Records.DonorID = RegisteredDonor.DonorID WHERE (RegisteredDonor.Email = @Email)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Email" QueryStringField="Email" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </asp:Panel>
    </div>
</asp:Content>

