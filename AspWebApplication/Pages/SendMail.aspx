<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="AspWebApplication.Pages.SendMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 221px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--    <asp:ScriptManager ID="ScriptManager1" runat="server">    </asp:ScriptManager>--%>
    <h2>Send Mail<br />
    </h2>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Send to:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Subject:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="230px" TabIndex="1"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Body:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="105px" Width="230px" TabIndex="2"></asp:TextBox>

                </td>
            </tr>
        </table>
        <table>

            <tr>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Your Email:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="165px" TabIndex="3" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="165px" TabIndex="4" />
                </td>
            </tr>
        </table>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="SMTP Server:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server"
                                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                AutoPostBack="True" TabIndex="5">
                            </asp:DropDownList><br />
                        </td>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Port:"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Enable SSL:"></asp:Label>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <table>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send Mail" OnClick="Button1_Click" TabIndex="4" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
