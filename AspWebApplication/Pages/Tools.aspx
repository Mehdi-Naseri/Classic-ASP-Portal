<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tools.aspx.cs" Inherits="AspWebApplication.Pages.Tools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<h3>Tools:</h3>
    <ul>
        <li><a id="A2" runat="server" href="~/Pages/Weblog">Weblog</a></li>
        <li><a id="A3" runat="server" href="~/Pages/FileHost">Upload</a></li>
        <li><a id="A10" runat="server" href="~/Pages/WebTools">Web Tools</a></li>
        <li><a id="A4" runat="server" href="~/Pages/Server">Server</a></li>
        <li><a id="A5" runat="server" href="~/Pages/Visitor">Visitor</a></li>
        <li><a id="A6" runat="server" href="~/Pages/Map">Map</a></li>
        <li><a id="A7" runat="server" href="~/Pages/SendMail">Send Mail</a></li>
        <li><a id="A8" runat="server" href="~/Pages/RSS">RSS</a></li>
    </ul>
    <br/>
    <h3>Experimental Tools:</h3>
    <ul>  
        <li><a id="A11" runat="server" href="~/Pages/WebTools">DNS</a></li>
        <li><a id="A12" runat="server" href="~/Pages/WebTools">Ping</a></li>
        <li><a id="A13" runat="server" href="~/Pages/WebTools">Search</a></li>
        <li><a id="A14" runat="server" href="~/Pages/ToolsFinished">Facebook Like</a></li>
        <li><a id="A15" runat="server" href="~/Pages/ToolsFinished">Google Plus</a></li>
        <li><a id="A16" runat="server" href="~/Pages/ToolsFinished">JavaScript</a></li>
    </ul>
    <br />
    <h3>Comming Soon:</h3>
    <ul>
        <li>Forum</li>
        <li>Change CSS</li>
    </ul>


</asp:Content>
