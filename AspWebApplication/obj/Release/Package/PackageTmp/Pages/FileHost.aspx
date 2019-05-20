<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FileHost.aspx.cs" Inherits="AspWebApplication.Pages.FileHost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>File Host</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <h2>
        File Host
    </h2>
    <p>
        Upload your file: <br/>
      <asp:FileUpload ID="FileUpload1" runat="server" /><br/>
    </p>
    <p>
    <asp:Button ID="Button1" runat="server" Text="Upload File" 
            onclick="Button1_Click"/><br/>
            <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>

    <%--OnSorting="GridView1_Sorting"--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" GridLines="Both" BorderColor="#660033" BorderStyle="Solid" BorderWidth="1px" BackColor="#CCFFCC" HeaderStyle-BorderStyle="Outset" HeaderStyle-BorderColor="Black" HeaderStyle-BackColor="#CC99FF"  AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="EntityDataSource1">
        <Columns>
            <asp:BoundField DataField="UploadedBy" HeaderText="UploadedBy" SortExpression="UploadedBy" />
            <asp:BoundField DataField="FileName" HeaderText="Name" SortExpression="FileName" />
            <asp:BoundField DataField="RandomName" HeaderText="RandomName" SortExpression="RandomName" />
            <asp:BoundField DataField="UploadDateTime" HeaderText="UploadDateTime" SortExpression="UploadDateTime" />
            <asp:BoundField DataField="ContentLength" HeaderText="Size" SortExpression="ContentLength" />
            <asp:BoundField DataField="ContentType" HeaderText="Type" SortExpression="ContentType" />
        </Columns>
<HeaderStyle BackColor="#CC99FF" BorderColor="Black" BorderStyle="Outset"></HeaderStyle>
    </asp:GridView>

        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PortalAspEntities" DefaultContainerName="PortalAspEntities" EnableDelete="True" EnableFlattening="False" EntitySetName="Uploads" EntityTypeFilter="Upload">
        </asp:EntityDataSource>

</asp:Content>
