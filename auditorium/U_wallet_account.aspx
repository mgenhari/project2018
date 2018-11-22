<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="U_wallet_account.aspx.cs" Inherits="U_wallet_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 42px;
        }
        .style3
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
                    CssClass="style3" style="font-weight: 700">Balance</asp:LinkButton>
            </td>
            <td class="style2">
                &nbsp;<asp:Label ID="Label2" runat="server" Text="INR : " CssClass="style3"></asp:Label>
            &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" CssClass="style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Account_No</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Amount</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Invalid" ForeColor="Red" 
                    ValidationExpression=" ^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="DEPOSIT" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>

