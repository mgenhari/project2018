<%@ Page Title="" Language="C#" MasterPageFile="~/Auditorium_manager.master" AutoEventWireup="true" CodeFile="AM_amount.aspx.cs" Inherits="AM_amount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView2" runat="server">
        <asp:View ID="View9" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        Type</td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>Normal Days</asp:ListItem>
                            <asp:ListItem>Sundays</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Hour Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Day Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
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
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View11" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="tid" HeaderText="tid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="type" HeaderText="type"></asp:BoundColumn>
                                <asp:BoundColumn DataField="houramount" HeaderText="houramount">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="dayamount" HeaderText="dayamount"></asp:BoundColumn>
                                <asp:ButtonColumn Text="View"></asp:ButtonColumn>
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
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Add New" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View8" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Type</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" 
                            ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Hour Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Day Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
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
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Update" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Delete" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

