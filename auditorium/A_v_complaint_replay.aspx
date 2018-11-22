<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="A_v_complaint_replay.aspx.cs" Inherits="A_view_complaint_replay" %>

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
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" 
        onactiveviewchanged="MultiView1_ActiveViewChanged">
        <asp:View ID="View1" runat="server">
            <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                onitemcommand="DataGrid1_ItemCommand">
                <Columns>
                    <asp:BoundColumn DataField="cid" HeaderText="serial_no"></asp:BoundColumn>
                    <asp:BoundColumn DataField="uid" HeaderText="Uid"></asp:BoundColumn>
                    <asp:BoundColumn DataField="date" HeaderText="Date"></asp:BoundColumn>
                    <asp:BoundColumn DataField="complaint" HeaderText="Complaint"></asp:BoundColumn>
                    <asp:ButtonColumn Text="Post Reply"></asp:ButtonColumn>
                </Columns>
            </asp:DataGrid>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Date</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Complaint</td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Reply</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
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
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="POST" onclick="Button1_Click" />
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
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

