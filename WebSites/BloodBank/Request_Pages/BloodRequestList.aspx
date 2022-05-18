<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="BloodRequestList.aspx.cs" Inherits="BloodRequestList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        text-align: left;
    }
        .auto-style16 {
            font-size: xx-large;
            color: #800000;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:Panel ID="Panel2" runat="server" BorderColor="Maroon" BorderWidth="2px">
        <strong>
        <br />
        <asp:Label ID="Label1" runat="server" Text="List of Request" CssClass="auto-style16"></asp:Label>
        <br />
        <br />
        <asp:ListView ID="RequestList" runat="server" DataSourceID="RequesterData" GroupItemCount="3" style=" width: 100%; " DataKeyNames="Email">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #9e3a3a;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    RequiredGroup:
                    <asp:Label ID="RequiredGroupLabel" runat="server" Text='<%# Eval("RequiredGroup") %>' />
                    <br />
                    Amount:
                    <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                    <br />
                    Location:
                    <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #008A8C; color: #FFFFFF;">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel1" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    RequiredGroup:
                    <asp:TextBox ID="RequiredGroupTextBox" runat="server" Text='<%# Bind("RequiredGroup") %>' />
                    <br />
                    Amount:
                    <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                    <br />
                    Location:
                    <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    RequiredGroup:
                    <asp:TextBox ID="RequiredGroupTextBox" runat="server" Text='<%# Bind("RequiredGroup") %>' />
                    <br />
                    Amount:
                    <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                    <br />
                    Location:
                    <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #fcfcfc; color: #000000;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    RequiredGroup:
                    <asp:Label ID="RequiredGroupLabel" runat="server" Text='<%# Eval("RequiredGroup") %>' />
                    <br />
                    Amount:
                    <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                    <br />
                    Location:
                    <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color:#fcfcfc ; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style=" font-weight: bold; color: #FFFFFF;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    RequiredGroup:
                    <asp:Label ID="RequiredGroupLabel" runat="server" Text='<%# Eval("RequiredGroup") %>' />
                    <br />
                    Amount:
                    <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                    <br />
                    Location:
                    <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <asp:SqlDataSource ID="RequesterData" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>" SelectCommand="SELECT Requester.Name, Requester.Email, RequestStatus.RequiredGroup, RequestStatus.Amount, RequestStatus.Location FROM Requester INNER JOIN RequestStatus ON Requester.Email = RequestStatus.Email"></asp:SqlDataSource>
        <br />
        </strong>
    </asp:Panel>
    </div>
</asp:Content>

