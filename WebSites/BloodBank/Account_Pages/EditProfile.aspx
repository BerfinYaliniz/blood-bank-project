<%@ Page Title="" Language="C#" MasterPageFile="~/Account_Pages/LoggedInMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Account_Pages_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        width: 413px;
    }
    .auto-style13 {
        text-align: center;
    }
    .auto-style14 {
        width: 264px;
        text-align: right;
    }
    .auto-style17 {
        font-size: medium;
    }
        .auto-style20 {
            width: 264px;
            text-align: right;
            height: 29px;
        }
        .auto-style31 {
            width: 29%;
            height: 180px;
        }
        .auto-style33 {
            height: 40px;
            text-align: left;
        }
        .auto-style37 {
            width: 98%;
        }
        .auto-style39 {
            height: 40px;
            width: 273px;
            text-align: left;
        }
        .auto-style43 {
            text-align: center;
        }
        .auto-style44 {
            width: 264px;
            height: 40px;
            text-align: left;
        }
        .auto-style46 {
            width: 264px;
            height: 29px;
            text-align: left;
        }
        .auto-style47 {
            width: 264px;
        }
        .auto-style48 {
            width: 280px;
        }
        .auto-style50 {
            text-align: center;
            width: 280px;
        }
    .auto-style52 {
            height: 40px;
            width: 275px;
            text-align: left;
        }
        .auto-style53 {
            width: 275px;
            text-align: left;
        }
        .auto-style54 {
            color: #CC0000;
        }
        .auto-style55 {
            text-align: left;
        }
        .auto-style56 {
            width: 264px;
            text-align: left;
        }
        .auto-style57 {
            font-size: large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <div class="auto-style43">
            <br />
            <strong>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style57" Text="Edit Profile"></asp:Label>
            </strong>
            <br />
            <br />
        </div>
        <table class="auto-style37" align="center" style="padding-left: 50px">
            <tr>
                <td class="auto-style44">
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="NameBox" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style33">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameBox" CssClass="auto-style54" ErrorMessage="*Must Enter Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style53">
                    <asp:TextBox ID="EmailBox" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailBox" CssClass="auto-style54" ErrorMessage="*Must Enter Email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label4" runat="server" Text="Blood Group:"></asp:Label>
                </td>
                <td class="auto-style53">
                    <asp:DropDownList ID="BBList" runat="server" Width="200px">
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
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BBList" CssClass="auto-style54" ErrorMessage="*Must Enter Blood Group"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label5" runat="server" Text="Living District:"></asp:Label>
                </td>
                <td class="auto-style53">
                    <asp:DropDownList ID="DisctrictList" runat="server" Width="200px">
                              <asp:ListItem>Select District</asp:ListItem>
                    <asp:ListItem>Turkey</asp:ListItem>
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
         
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DisctrictList" CssClass="auto-style54" ErrorMessage="*Must Enter District"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">
                    <asp:Label ID="Label6" runat="server" Text="Contact No:"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="ContactBox" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ContactBox" CssClass="auto-style54" ErrorMessage="*Must Enter Contact No"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style44">Address:</td>
                <td class="auto-style52">
                    <asp:TextBox ID="AddressBox" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style17" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style53">
                    <asp:RadioButtonList ID="GenderRadio" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55">
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Weight(kg):"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="WeightBox" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="Height:"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="HeightBox" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style17" Text="Are you smoker? :"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:DropDownList ID="SmokerList" runat="server" Width="200px">
                    <asp:ListItem>Select One</asp:ListItem>
                    <asp:ListItem>Non Smoker</asp:ListItem>
                    <asp:ListItem>Occassional Smoker</asp:ListItem>
                    <asp:ListItem>Regular Smoker</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style17" Text="Are you drug addicted?:"></asp:Label>
                </td>
                <td class="auto-style53">
                    <asp:DropDownList ID="AddictList" runat="server" Width="200px">
                        <asp:ListItem>Select One</asp:ListItem>
                    <asp:ListItem>Non-Addict</asp:ListItem>
                    <asp:ListItem>Occasional Addict</asp:ListItem>
                    <asp:ListItem>Regular Addict</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55">
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style17" Text="Date of Birth:"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="BirthdayBox" runat="server" Width="280px"></asp:TextBox>
                </td>
                <td class="auto-style55">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55">
                    <asp:Label ID="Label15" runat="server" Text="Donation Status"></asp:Label>
                    :</td>
                <td class="auto-style53">
                    <asp:RadioButtonList ID="StatusRadio" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Available</asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <p>
        <br />

    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td>
            <br />
            <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style56" style="padding-left: 50px">
                            <asp:Label ID="Label14" runat="server" Text="Bio:"></asp:Label>
                        </td>
                        <td class="auto-style48" style="padding-top: 10px">
                            <asp:TextBox ID="BioBox" runat="server" Height="129px" Width="280px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47" style="padding-left: 50px">
                            <br />
                        </td>
                        <td class="auto-style50">
                            <br />
                            
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" />
                                                <asp:Button ID="deleteButton" runat="server" OnClick="deleteButton_Click"  Text="Delete" />
        <br />
                            <br />
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            
        </td>
    </tr>
</table>
</asp:Content>

