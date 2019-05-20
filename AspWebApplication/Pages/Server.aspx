<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Server.aspx.cs" Inherits="AspWebApplication.Pages.Server" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <h2>Server Information
    </h2>

    <asp:Label ID="LabelE" runat="server"></asp:Label><br/>
    <br />
    <br />

    <h3>Method 1:</h3>
    <asp:Label ID="Label1" runat="server"></asp:Label><br/>
    <asp:Label ID="Label2" runat="server"></asp:Label><br/>
    <asp:Label ID="Label3" runat="server"></asp:Label><br/>
    <asp:Label ID="Label4" runat="server"></asp:Label><br/>
    <br />
    <br />
    <h3>Method 2:</h3>
    <asp:Label ID="Label5" runat="server"></asp:Label><br/>
    <br />
    <br />
    <h3>Method 3:</h3>
    <asp:Label ID="Label6" runat="server"></asp:Label><br/>
    <asp:Label ID="Label7" runat="server"></asp:Label><br/>

</asp:Content>
