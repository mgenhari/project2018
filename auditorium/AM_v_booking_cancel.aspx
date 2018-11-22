<%@ Page Title="" Language="C#" MasterPageFile="~/Auditorium_manager.master" AutoEventWireup="true" CodeFile="AM_v_booking_cancel.aspx.cs" Inherits="AM_v_booking_cancel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    onitemcommand="DataGrid1_ItemCommand">
                    <Columns>
                        <asp:BoundColumn DataField="bid" HeaderText="bid"></asp:BoundColumn>
                        <asp:BoundColumn DataField="uid" HeaderText="uid"></asp:BoundColumn>
                        <asp:BoundColumn DataField="time" HeaderText="time"></asp:BoundColumn>
                    </Columns>
                </asp:DataGrid>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>

