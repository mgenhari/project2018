<%@ Page Title="" Language="C#" MasterPageFile="~/Auditorium_manager.master" AutoEventWireup="true" CodeFile="AM_set_package.aspx.cs" Inherits="AM_set_package" %>

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
    .style3
    {
        height: 143px;
    }
    .style4
    {
        height: 34px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" 
        >
        <asp:View ID="View4" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Package</td>
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem>Marriage</asp:ListItem>
                            <asp:ListItem>Conference</asp:ListItem>
                            <asp:ListItem>Engagement</asp:ListItem>
                            <asp:ListItem>Bussiness Meeting</asp:ListItem>
                            <asp:ListItem>Family Meeting</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Rate</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        </td>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
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
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid1_ItemCommand" 
                            >
                            <Columns>
                                <asp:BoundColumn DataField="pgid" HeaderText="package id"></asp:BoundColumn>
                                <asp:BoundColumn DataField="package" HeaderText="package"></asp:BoundColumn>
                                <asp:BoundColumn DataField="aname" HeaderText="aname"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Rate" HeaderText="package rate">
                                </asp:BoundColumn>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Add New" />
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
                        Package</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>marriage</asp:ListItem>
                            <asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem>Conference</asp:ListItem>
                            <asp:ListItem>BusinessMeet</asp:ListItem>
                            <asp:ListItem>FamilyMeet</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rate</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="Invalid" ForeColor="Red" 
                            ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
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
                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="UPDATE" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="DELETE" 
                            CausesValidation="False" />
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

