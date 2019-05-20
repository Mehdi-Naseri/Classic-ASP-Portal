<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Visitor.aspx.cs" Inherits="AspWebApplication.Pages.Visitor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Your system information:
    </h2>
    <p>
        Resolution:
        <script type="text/javascript">
            // get width of scree
            document.write(screen.width);
            // get height of screen
            document.write('*');
            document.write(screen.height);
        </script>
    </p>
    <p>
        User Location:<br />
        <script type="text/javascript" language="JavaScript" src="http://j.maxmind.com/app/geoip.js"></script>

        <br />
        Country Code:
        <script language="JavaScript" type="text/javascript">document.write(geoip_country_code());</script>
        <br />
        Country Name:
        <script language="JavaScript" type="text/javascript">document.write(geoip_country_name());</script>
        <br />
        City:
        <script language="JavaScript" type="text/javascript">document.write(geoip_city());</script>
        <br />
        Region:
        <script language="JavaScript" type="text/javascript">document.write(geoip_region());</script>
        <br />
        Region Name:
        <script language="JavaScript" type="text/javascript">document.write(geoip_region_name());</script>
        <br />
        Latitude:
        <script language="JavaScript" type="text/javascript">document.write(geoip_latitude());</script>
        <br />
        Longitude:
        <script language="JavaScript" type="text/javascript">document.write(geoip_longitude());</script>
        <br />
        Postal Code:
        <script language="JavaScript" type="text/javascript">document.write(geoip_postal_code());</script>
    </p>
</asp:Content>
