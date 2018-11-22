<%@ Page Title="" Language="C#" MasterPageFile="~/Auditorium_manager.master" AutoEventWireup="true" CodeFile="AM_set_facilities.aspx.cs" Inherits="AM_set_facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        height: 30px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Auditorium Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Facilities</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>A/C</asp:ListItem>
                            <asp:ListItem>NON AC</asp:ListItem>
                            <asp:ListItem>Transportation</asp:ListItem>
                            <asp:ListItem>Seminar</asp:ListItem>
                            <asp:ListItem>Decoration</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rate</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        </td>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand" 
                            onselectedindexchanged="DataGrid1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundColumn DataField="fid" HeaderText="fac_id"></asp:BoundColumn>
                                <asp:BoundColumn DataField="aname" HeaderText="audi_name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="facility" HeaderText="facility"></asp:BoundColumn>
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
                        <asp:Button ID="Button2" runat="server" Text="ADD NEW" 
                            onclick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Auditorium Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Facilities</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rate</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="UPDATE" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" CausesValidation="False" 
                            onclick="Button4_Click" Text="DELETE" />
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
    </asp:MultiView>
</asp:Content>

