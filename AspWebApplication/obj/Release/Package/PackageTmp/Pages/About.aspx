<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AspWebApplication.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="../Scripts/MehdiJavaScript.js"></script>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Who am I?</h2>
    </hgroup>

    <article>
        I am a human from the Earth.<br />
        They named me Mehdi.<br />
        Nice to meet you.<br />

        <div id="StripImage"></div>
        <script type="text/javascript">
            var imgData = {
                url: "../Files/Images/Mehdi.jpg",
                width: 221,
                height: 288
            };
            imageStripsMaker({
                img: imgData,
                strips: 16,
                delay: 0.1,
                time: 2,
                direction: "random",
                addIn: document.getElementById("StripImage")
            });
        </script>
    </article>

    <aside>
        <h3>Contents:</h3>
        <ul>
            <li><a id="A1" runat="server" href="~/">Home</a></li>
            <li><a id="A2" runat="server" href="~/Pages/Weblog">Weblog</a></li>
            <li><a id="A3" runat="server" href="~/Pages/FileHost">Upload</a></li>
            <li><a id="A10" runat="server" href="~/Pages/WebTools">Web Tools</a></li>
            <li><a id="A4" runat="server" href="~/Pages/Server">Server</a></li>
            <li><a id="A5" runat="server" href="~/Pages/Visitor">Visitor</a></li>
            <li><a id="A6" runat="server" href="~/Pages/Map">Map</a></li>
            <li><a id="A7" runat="server" href="~/Pages/SendMail">Send Mail</a></li>
            <li><a id="A8" runat="server" href="~/Pages/RSS">RSS</a></li>
            <li><a id="A9" runat="server" href="~/Pages/Tools">Tools</a>
            <li><a id="A12" runat="server" href="~/Pages/About">About</a></li>
            <li><a id="A13" runat="server" href="~/Pages/Contact">Contact</a></li>
        </ul>
    </aside>
</asp:Content>
