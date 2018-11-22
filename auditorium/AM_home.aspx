<%@ Page Title="" Language="C#" MasterPageFile="~/Auditorium_manager.master" AutoEventWireup="true" CodeFile="AM_home.aspx.cs" Inherits="AM_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" 
            onclick="LinkButton5_Click" PostBackUrl="~/AM_create_profile.aspx">Create Profile</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/AM_amount.aspx">Set Amount</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton12" runat="server" 
            PostBackUrl="~/AM_v_booking_req.aspx">View Booking</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton13" runat="server" 
            onclientclick=" " PostBackUrl="~/AM_wallet_account.aspx">wallet</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
</asp:Content>

