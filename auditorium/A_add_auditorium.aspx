<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_add_auditorium.aspx.cs" Inherits="A_add_auditorium" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        width: 71px;
    }
    .style3
    {
        width: 71px;
        height: 152px;
    }
    .style4
    {
        height: 152px;
    }
        .style5
        {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style5">
                        Auditorium id</td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Auditorium name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Location</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact Number</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="[0-9]{10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" />
                        &nbsp;
                        <asp:Button ID="Button3" runat="server" Text="UPDATE" onclick="Button3_Click" />
                        &nbsp;
                        <asp:Button ID="Button4" runat="server" Text="CANCEL" onclick="Button4_Click" 
                            CausesValidation="False" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style3">
                    </td>
                    <td class="style4">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand" Width="433px" Height="158px">
                            <Columns>
                                <asp:BoundColumn DataField="aid" HeaderText="aid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="aname" HeaderText="aname"></asp:BoundColumn>
                                <asp:BoundColumn DataField="location" HeaderText="location"></asp:BoundColumn>
                                <asp:BoundColumn DataField="cont_no" HeaderText="contact No"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="delete" Text="Delete"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="edit" Text="Edit"></asp:ButtonColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td class="style4">
                        </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="ADD NEW" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

