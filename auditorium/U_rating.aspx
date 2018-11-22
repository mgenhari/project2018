<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="U_rating.aspx.cs" Inherits="U_rating" %>

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
        <asp:View ID="View10" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" 
                            onitemcommand="DataGrid3_ItemCommand" 
                            onselectedindexchanged="DataGrid3_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundColumn DataField="aid" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="aname" HeaderText="aname"></asp:BoundColumn>
                                <asp:BoundColumn DataField="location" HeaderText="location"></asp:BoundColumn>
                                <asp:BoundColumn DataField="cont_no" HeaderText="contact number">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="email" HeaderText="mail"></asp:BoundColumn>
                                <asp:BoundColumn DataField="image" HeaderText="image" Visible="False"></asp:BoundColumn>
                                <asp:TemplateColumn>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="61px" 
                                            ImageUrl='<%# Eval("image") %>' Width="67px" />
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="rating" HeaderText="rating"></asp:BoundColumn>
                                <asp:ButtonColumn Text="view"></asp:ButtonColumn>
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
        <asp:View ID="View9" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rating</td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" 
                            ImageUrl="~/rate/star-rating.png"  
                            oncommand="ImageButton1_Command" Width="27px" 
                            onclick="ImageButton1_Click" Visible="False" />
                        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="29px" 
                            ImageUrl="~/rate/star-rating.png"  
                            oncommand="ImageButton3_Command" Width="27px" Visible="False" />
                        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="29px" 
                            ImageUrl="~/rate/star-rating.png"  
                            oncommand="ImageButton2_Command" Width="27px" Visible="False" />
                        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="29px" 
                            ImageUrl="~/rate/star-rating.png" 
                            oncommand="ImageButton4_Command" Width="27px" Visible="False" />
                        &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" Height="29px" 
                            ImageUrl="~/rate/star-rating.png"  
                            oncommand="ImageButton5_Command" style="margin-left: 0px" Width="27px" 
                            Visible="False" />
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        Your score is&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" ForeColor="#666666" 
                            Text="your rating is out of 5"></asp:Label>
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
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                            style="height: 29px" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

