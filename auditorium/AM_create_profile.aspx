<%@ Page Title="" Language="C#" MasterPageFile="~/Auditorium_manager.master" AutoEventWireup="true" CodeFile="AM_create_profile.aspx.cs" Inherits="AM_create_profile" %>

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
        .style3
        {
            width: 458px;
        }
        .style4
        {
            height: 27px;
            width: 458px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="aid" HeaderText="aid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="aname" HeaderText="aname"></asp:BoundColumn>
                                <asp:BoundColumn DataField="location" HeaderText="location"></asp:BoundColumn>
                                <asp:BoundColumn DataField="cont_no" HeaderText="contno"></asp:BoundColumn>
                                <asp:BoundColumn DataField="email" HeaderText="email"></asp:BoundColumn>
                                <asp:ButtonColumn HeaderText="edit" Text="edit"></asp:ButtonColumn>
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
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Auditorium name</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z]\s+$"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Location</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="124px" Width="103px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Address</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Cont. No</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        E-mail</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Image</td>
                    <td class="style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPLOAD" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
                    </td>
                    <td class="style4">
                    </td>
                    <td class="style2">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SUBMIT" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

