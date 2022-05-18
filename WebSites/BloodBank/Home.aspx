<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            width: 457px;
            height: 45px;
            text-align: center;
        }
        .auto-style16 {
            font-size: x-large;
            color: #800000;
            background-color: #FFFF99;
        }
        .auto-style17 {
            color: #000000;
        }
        .auto-style18 {
            text-decoration: none;
        font-size: large;
        color: #b89595;
    }
        .auto-style19 {
            color: #006600;
            text-decoration: none;
        }
        .auto-style20 {
            text-align: center;
            width: 458px;
            color: #006600;
        }
        .auto-style21 {
            text-align: center;
            width: 458px;
            color: #006600;
            text-decoration: none;
        }
        .auto-style22 {
            width: 56%;
        }
        .auto-style24 {
        width: 46%;
        text-align: left;
        color: #800000;
        font-size: large;
        background-color: #FFFFFF;
        height: 122px;
    }
    .auto-style25 {
        text-align: left;
        width: 272px;
        height: 45px;
    }
    .auto-style29 {
        text-align: center;
    }
    .auto-style30 {
        height: 45px;
        text-align: left;
        width: 682px;
    }
    .auto-style31 {
        font-size: x-large;
        color: #800000;
        text-decoration: underline;
    }
        .auto-style37 {
            width: 1260px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p></p>
    <strong> 
    <span class="auto-style7"> 
    <asp:Panel ID="Panel3" runat="server" Height="286px" BorderColor="Maroon" BorderWidth="2px">
        <br />
        <strong><span class="auto-style7">
        <asp:Label ID="Label4" runat="server" CssClass="auto-style22" style="font-size: x-large; color: #800000;" Text="Admin"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="SeeRequestButton" runat="server" OnClick="SeeRequestButton_Click" Text="See Requests" Height="32px" Width="360px" />
        <br />
        <br />
        <br />
        <asp:Button ID="DonorButton" runat="server" Height="32px" OnClick="DonorButton_Click" Text="View Registered Donors" Width="360px" />
        <br />
        <br />
        <br />
        <asp:Button ID="AdminLogout" runat="server" OnClick="AdminLogout_Click" Text="Log Out" />
        </span></strong>
        <br />
        
    </asp:Panel>
        </span>
    <p>
        </strong></p>
    
    <div class="auto-style29">
    
    <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <table>
            <tr>
                <td class="auto-style37"><strong>
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style16" Text="  Donor's Area  "></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="WelcomeLabel" runat="server" CssClass="auto-style17" Text="Welcome"></asp:Label>
                    <br />
                    <br />
                    <asp:HyperLink ID="EditLink" runat="server" CssClass="auto-style19" NavigateUrl="~/Account_Pages/EditProfile.aspx">Edit Profile</asp:HyperLink>
                    <br />
                    <br />
                    <span class="auto-style20">
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style21" NavigateUrl="~/Account_Pages/PasswordEdit.aspx">Change Password</asp:HyperLink>
                    <br />
                    <br />
                    <span class="auto-style7">
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style19" NavigateUrl="~/Account_Pages/AddDonation.aspx">Add Donation</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style19" NavigateUrl="~/Account_Pages/DonationHistory.aspx">Donation History</asp:HyperLink>
                    <br />
                    <br />
                    <asp:Button ID="LogOutButton" runat="server" OnClick="LogOutButton_Click" Text="Log out" />
                    <br />
                    <br />
                    </span></span></strong></td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    </div>
    <br />
        <div class="auto-style29">
            <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderWidth="2px">
                <strong><span class="auto-style7">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style31" Text="Login as Donor"></asp:Label>
                <br />
                </span></strong>
                <br />
                <strong><span class="auto-style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="auto-style24" align="center">
                    <tr>
                        <td class="auto-style25">Enter Email:</td>
                        <td class="auto-style30">
                            <asp:TextBox ID="LoginEmailText" runat="server" BorderColor="Black" Width="256px" style="font-size: medium"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">Enter Password:</td>
                        <td class="auto-style30">
                            <asp:TextBox ID="LoginPassText" runat="server" BorderColor="Black" TextMode="Password" Width="256px" style="font-size: medium"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="PassLabel" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" Width="130px" />
                <br />
                <br />
                <asp:HyperLink ID="RegisterLink" runat="server" CssClass="auto-style18" NavigateUrl="~/Registration.aspx">Register Yourself</asp:HyperLink>
                <br />
                <br />
                </span></strong>
            </asp:Panel>
</div>

    
    <br />

    
</asp:Content>

