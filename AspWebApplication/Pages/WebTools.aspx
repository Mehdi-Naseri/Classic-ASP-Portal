<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebTools.aspx.cs" Inherits="AspWebApplication.Pages.WebTools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Users System Information</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <h2>
        Web Tools
    </h2>
    <!--DNS-->
    <div>
       DNS<br/>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Find" onclick="Button1_Click" />
        <br/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    <br/><br/>
    <!--Ping-->
        <div>
       Ping<br/>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Ping" onclick="Button2_Click"/>
        <br/>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>
        <br/><br/>
    <!--Google Search-->
        <div>
       Google Search<br/>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Google" onclick="Button3_Click"/>
        <br/>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
