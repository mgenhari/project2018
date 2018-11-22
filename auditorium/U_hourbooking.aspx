<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="U_hourbooking.aspx.cs" Inherits="U_hourbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        height: 68px;
    }
        .style3
        {
            height: 63px;
        }
        .style4
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View3" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        Auditorium Name</td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Booking Type</td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                            >
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>Normal Days</asp:ListItem>
                            <asp:ListItem>Sundays</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DropDownList9" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Day</td>
                    <td>
                        <asp:DropDownList ID="DropDownList6" runat="server">
                        </asp:DropDownList>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                            runat="server" ControlToValidate="DropDownList6" ErrorMessage="*" 
                            ForeColor="Red" InitialValue="Day"></asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                        </asp:DropDownList>
                        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="DropDownList4" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Month"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList5" runat="server">
                        </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Year"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Start Time</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Invalid(00:00 am/pm)" 
                            ForeColor="Red" 
                            ValidationExpression="^(([0]?[0-9]|1[0-2]):[0-5][0-9][ ][aApP][mM])|((1[3-9]|2[0-3]):[0-5][0-9])$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        End Time</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Invalid(00:00 am/pm)" 
                            ForeColor="Red" 
                            ValidationExpression="^(([0]?[0-9]|1[0-2]):[0-5][0-9][ ][aApP][mM])|((1[3-9]|2[0-3]):[0-5][0-9])$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        </td>
                    <td class="style3">
                        <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click">Check Hour</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        Hour</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton6_Click">Total Amount</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        Amount<br />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button 
                            ID="Button1" runat="server" 
                            Text="Submit" onclick="Button1_Click" />
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
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="aname" HeaderText="Auditorium"></asp:BoundColumn>
                                <asp:BoundColumn DataField="date" HeaderText="date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="start_time" HeaderText="start time">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="end_time" HeaderText="end time"></asp:BoundColumn>
                                <asp:BoundColumn DataField="amount" HeaderText="amount"></asp:BoundColumn>
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
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Add New" 
                            onclick="Button2_Click" />
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

