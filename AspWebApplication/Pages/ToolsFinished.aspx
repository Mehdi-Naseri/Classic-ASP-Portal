<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToolsFinished.aspx.cs" Inherits="AspWebApplication.Pages.ToolsFinished" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="../Scripts/MehdiJavaScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <!-- (1) Facebook Likebox -->
    Facebook LikeBox:
    <div id="fb-root">
    </div>
    <script type="text/javascript">
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <div class="fb-like">
    </div>
    <!-- (2) Google Plus -->
    <p>
        Google Plus:
    </p>
    <!-- size="small" or "medium" or "tall" -->
    <g:plusone href="http://naseri.somee.com/" size="small"></g:plusone>
    <br />
    <!-- (3) Making picture larger and smaller: -->
    <p>
        <img alt="164,230" src="../Files/Images/Pic2Resize.gif" onmouseover="image_mouseover_resize(this,164,230)"
            onmouseout="image_mouseout_resize(this,164,230)" />
    </p>
</asp:Content>
