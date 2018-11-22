<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="U_book_audi.aspx.cs" Inherits="U_book_audi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 60px;
        }
        .style4
        {
            height: 117px;
        }
    .style5
    {
        height: 49px;
    }
    .style7
    {
        height: 60px;
        width: 548px;
    }
    .style8
    {
        width: 548px;
    }
    .style9
    {
        width: 416px;
    }
    .style10
    {
        height: 60px;
        width: 416px;
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
                        <asp:DropDownList ID="DropDownList7" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" onselectedindexchanged="DropDownList7_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="DropDownList7" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="--select--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Place</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList9_SelectedIndexChanged">
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
                    <td class="style5">
                        Date</td>
                    <td class="style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Day"></asp:RequiredFieldValidator>
                        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Month"></asp:RequiredFieldValidator>
                        &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" 
                            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Year"></asp:RequiredFieldValidator>
                        &nbsp;<asp:Label ID="Label1" runat="server" Text="TO"></asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="DropDownList4" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Day"></asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="DropDownList5" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Month"></asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="DropDownList6" runat="server" 
                           >
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="DropDownList6" ErrorMessage="*" ForeColor="Red" 
                            InitialValue="Year"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Starting Time</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Invalid(00:00 am/pm)" 
                            ForeColor="Red" 
                            ValidationExpression="^(([0]?[0-9]|1[0-2]):[0-5][0-9][ ][aApP][mM])|((1[3-9]|2[0-3]):[0-5][0-9])$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Package</td>
                    <td>
                        <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList10_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="DropDownList10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Height="39px" onclick="Button3_Click" 
                            Text="SUBMIT" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid2_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="bid" HeaderText="bid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="aid" HeaderText="aid"></asp:BoundColumn>
                                <asp:BoundColumn DataField="fr_date" HeaderText="Date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="time" HeaderText="time"></asp:BoundColumn>
                                <asp:BoundColumn DataField="pkg_id" HeaderText="package" Visible="False"></asp:BoundColumn>
                                <asp:ButtonColumn Text="cancel" CommandName="cancel"></asp:ButtonColumn>
                            </Columns>
                        </asp:DataGrid>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="ADD NEW" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View7" runat="server">
            <table class="style1">
                <tr>
                    <td class="style9">
                        Amount</td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        Do you want ?</td>
                    <td class="style8">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            RepeatDirection="Horizontal" AutoPostBack="True">
                            <asp:ListItem>A/C</asp:ListItem>
                            <asp:ListItem>Non AC</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Others</td>
                    <td class="style7">
                    </td>
                    <td class="style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        Facility</td>
                    <td class="style8">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                            RepeatDirection="Horizontal" AutoPostBack="True">
                            <asp:ListItem>Decoration</asp:ListItem>
                            <asp:ListItem>Transportation</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            CausesValidation="False">Total amount</asp:LinkButton>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                    </td>
                    <td class="style8">
                        <asp:Button ID="Button5" runat="server" Text="Confirm" 
                            onclick="Button5_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Cancel" 
                            Width="80px" CausesValidation="False" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

