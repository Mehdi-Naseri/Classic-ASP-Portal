<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspWebApplication._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Home Page.This website has been made just for evaluation of new technologies.</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Tools:</h3>
    <ol class="round">
        <li class="one">
            <h5><a runat="server" href="~/Pages/Weblog">Weblog </a></h5>
            Share your ideas.
        </li>
        <li class="two">
            <h5><a runat="server" href="~/Pages/Upload">Upload</a></h5>
            Save your files in web server and access them form everywhere. 
        </li>


        <li class="three">
            <h5><a runat="server" href="~/Pages/WebTools">Web Tools</a></h5>
            DNS, Ping, Search.

        </li>

        <li class="four">
            <h5><a id="A1" runat="server" href="~/Pages/Server">Server</a></h5>
            Server information.
        </li>

        <li class="five">
            <h5><a id="A2" runat="server" href="~/Pages/Visitor">Visitor</a></h5>
            Your system information, including your screen size and location.
        </li>

        <li class="six">
            <h5><a id="A3" runat="server" href="~/Pages/Map">Map</a></h5>
            Your location on Google map.
        </li>

        <li class="seven">
            <h5><a id="A11" runat="server" href="~/Pages/SendMail">Send Mail</a></h5>
            send email from with "Gmail, Yahoo Hotmail or AOL" from here. 
        </li>

        <li class="eight">
            <h5><a id="A12" runat="server" href="~/Pages/RSS">RSS</a></h5>
            Read RSS.
        </li>

        <li class="nine">
            <h5><a id="A13" runat="server" href="~/Pages/ToolsFinished">Experimental Tools</a></h5>
             Facebook, Google Plus , JavaScript.
        </li>
    </ol>
</asp:Content>
