<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="U_home.aspx.cs" Inherits="U_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;<br />
&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" 
    PostBackUrl="~/U_audit_search.aspx" onclick="LinkButton4_Click">Search Auditorium</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton7" runat="server" 
        PostBackUrl="~/U_wallet_account.aspx">Wallet</asp:LinkButton>
    &nbsp; 
</asp:Content>

