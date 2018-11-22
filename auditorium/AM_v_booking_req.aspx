<%@ Page Title="" Language="C#" MasterPageFile="~/Auditorium_manager.master" AutoEventWireup="true" CodeFile="AM_v_booking_req.aspx.cs" Inherits="AM_view_booking_req_aprv_rejt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                            Text="Normal Booking" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Hour Booking" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundColumn DataField="bid" HeaderText="bid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="name" HeaderText="User"></asp:BoundColumn>
                                <asp:BoundColumn DataField="fr_date" HeaderText="From Date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="to_date" HeaderText="To Date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="time" HeaderText="Time"></asp:BoundColumn>
                                <asp:BoundColumn DataField="package" HeaderText="package"></asp:BoundColumn>
                                <asp:BoundColumn DataField="total_amt" HeaderText="Amount"></asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundColumn DataField="hid" HeaderText="hid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="name" HeaderText="User"></asp:BoundColumn>
                                <asp:BoundColumn DataField="date" HeaderText="date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="start_time" HeaderText="start_time">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="end_time" HeaderText="end_time"></asp:BoundColumn>
                                <asp:BoundColumn DataField="amount" HeaderText="amount"></asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    
</asp:Content>

