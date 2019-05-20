<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="AspWebApplication.Pages.Map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript" src="http://j.maxmind.com/app/geoip.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <script type="text/javascript">
            var map;
            function initialize() {
                var options =
        {
            zoom: 7,
            center: new google.maps.LatLng(geoip_latitude(), geoip_longitude()),
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            mapTypeControl: true,
            mapTypeControlOptions:
            {
                style: google.maps.MapTypeControlStyle.DROPDOWN_MENU,
                poistion: google.maps.ControlPosition.TOP_RIGHT,
                mapTypeIds: [google.maps.MapTypeId.ROADMAP,
                  google.maps.MapTypeId.TERRAIN,
                  google.maps.MapTypeId.HYBRID,
                  google.maps.MapTypeId.SATELLITE]
            },
            navigationControl: true,
            navigationControlOptions:
            {
                style: google.maps.NavigationControlStyle.ZOOM_PAN
            },
            scaleControl: true,
            disableDoubleClickZoom: true,
            draggable: false,
            streetViewControl: true,
            draggableCursor: 'move'
        };
                map = new google.maps.Map(document.getElementById("map"), options);
                // Add Marker and Listener
                var latlng = new google.maps.LatLng(geoip_latitude(), geoip_longitude());
                var marker = new google.maps.Marker
        (
            {
                position: latlng,
                map: map,
                title: 'Click Me!'
            }
        );
                var infowindow = new google.maps.InfoWindow({
                    content: 'Location info:<br/>Country Name:<br/>LatLng:'
                });
                google.maps.event.addListener(marker, 'click', function () {
                    // Calling the open method of the infoWindow 
                    infowindow.open(map, marker);
                });
            }
            window.onload = initialize;
    </script>

<h2>GoogleMap</h2>

<div id="map" style="height: 600px; width: 800px" />
</asp:Content>
