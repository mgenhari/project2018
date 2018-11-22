<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_home.aspx.cs" Inherits="A_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        PostBackUrl="~/A_add_auditorium.aspx">Add auditorium</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" 
        PostBackUrl="~/A_v_complaint_replay.aspx">View complaint</asp:LinkButton>
</asp:Content>

