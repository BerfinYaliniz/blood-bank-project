<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style34 {
            text-decoration: underline;
            color: #CC0000;
            font-size: xx-large;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style35 {
            width: 465px;
            height: 45px;
        }
        .auto-style13 {
            width: 465px;
            height: 73px;
            text-align: center;
        }
        #Reset1 {
            width: 130px;
            height: 30px;
        }
        .auto-style15 {
            width: 125px;
        }
        .auto-style37 {
            left: -126px;
            top: -3px;
            width: 465px;
            height: 45px;
        }
        .auto-style41 {
            height: 73px;
        }
        .auto-style42 {
            width: 207px;
            height: 73px;
            text-align: left;
        }
    .auto-style43 {
            width: 207px;
            text-align: left;
            font-weight: bold;
            height: 45px;
        }
    .auto-style44 {
        height: 45px;
        font-size: 38pt;
        color: #CC0000;
        width: 465px;
    }
    .auto-style45 {
        height: 45px;
    }
    .auto-style46 {
        width: 207px;
        text-align: left;
        font-weight: bold;
        height: 46px;
    }
    .auto-style47 {
        height: 46px;
        font-size: 38pt;
        color: #CC0000;
        width: 465px;
    }
    .auto-style48 {
        height: 46px;
    }
    .auto-style49 {
        left: 125px;
        top: 2px;
        height: 45px;
    }
    .auto-style50 {
            width: 207px;
            height: 45px;
            text-align: left;
        }
    .auto-style51 {
        text-align: center;
    }
    .auto-style52 {
        color: #CC0000;
    }
        .auto-style53 {
            left: 0px;
            top: 0px;
            background-color: #FFFFFF;
        }
        .auto-style54 {
            width: 100%;
            height: 11px;
            background-color: #FFFFFF;
        }
        .auto-style55 {
            text-decoration: underline;
            color: #800000;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style51">
        <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
            <strong><span class="auto-style55">
            <br />
            Registration</span><span class="auto-style34">
            <br />
            <br />
            </span>
            <table align="center" class="auto-style9">
                <tr>
                    <td class="auto-style43">Name :</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="NameText" runat="server" Height="30px" Width="431px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameText" CssClass="auto-style54" ErrorMessage="Name is required" style="color: #CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style46">E-mail :</td>
                    <td class="auto-style47">
                        <asp:TextBox ID="EmailText" runat="server" Height="30px" Width="430px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style48">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailText" CssClass="auto-style54" ErrorMessage="E-mail is required" style="color: #CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailText" CssClass="auto-style54" ErrorMessage="E-mail must be valid" style="color: #CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">Password:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="PasswordText" runat="server" Height="30px" TextMode="Password" Width="432px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordText" CssClass="auto-style54" ErrorMessage="Password is required" style="color: #CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">Confirm Password:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="ConfirmPasswordText" runat="server" Height="30px" TextMode="Password" Width="429px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPasswordText" CssClass="auto-style11" ErrorMessage="Re-enter password" style="color: #CC0000; background-color: #FFFFFF;"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordText" ControlToValidate="ConfirmPasswordText" CssClass="auto-style54" ErrorMessage="Password do not match" style="color: #CC0000"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43"><strong>Conact No.:</strong></td>
                    <td class="auto-style44">
                        <asp:TextBox ID="ContactNoText" runat="server" Height="30px" Width="429px" BorderColor="Maroon" BorderWidth="2px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ContactNoText" ErrorMessage="Contact No is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50"><strong>Living District:</strong></td>
                    <td class="auto-style37">
                        <asp:DropDownList ID="DistrictList" runat="server" style="margin-left: 0px" Width="187px">
                            <asp:ListItem>Select District</asp:ListItem>
                            <asp:ListItem>Turkey</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Barisal</asp:ListItem>
                            <asp:ListItem>Bhola</asp:ListItem>
                            <asp:ListItem>Bogra</asp:ListItem>
                            <asp:ListItem>Brahmanbaria</asp:ListItem>
                            <asp:ListItem>Chandpur</asp:ListItem>
                     
                            <asp:ListItem>Dhaka</asp:ListItem>
                            <asp:ListItem>Dinajpur</asp:ListItem>
                            <asp:ListItem>Faridpur</asp:ListItem>
                            <asp:ListItem>Feni</asp:ListItem>
                            <asp:ListItem>Gaibandha</asp:ListItem>
                            <asp:ListItem>Gazipur</asp:ListItem>
                            <asp:ListItem>Gopalganj</asp:ListItem>
                            <asp:ListItem>Habiganj</asp:ListItem>
                            <asp:ListItem>Narail</asp:ListItem>
                            <asp:ListItem>Narayanganj </asp:ListItem>
                            <asp:ListItem>Narsingdi</asp:ListItem>
                            <asp:ListItem>Natore</asp:ListItem>
                     
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style49">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DistrictList" CssClass="auto-style52" ErrorMessage="Select a District"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50"><strong>Blood Group:</strong></td>
                    <td class="auto-style35">
                        <asp:DropDownList ID="GroupList" runat="server" Width="185px">
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
                    <td class="auto-style45">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="GroupList" CssClass="auto-style53" ErrorMessage="Select a Blood Group" style="color: #CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style13">
                        <br />
                        <asp:Button ID="SubmitButton" runat="server" Height="30px" OnClick="SubmitButton_Click" Text="Submit" Width="133px" />
                        &nbsp;&nbsp;&nbsp;
                        <input id="Reset1" class="auto-style15" type="reset" value="reset" />
                    </td>
                    <td class="auto-style41">
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            </strong>
        </asp:Panel>
       
    </div>
    
</asp:Content>

