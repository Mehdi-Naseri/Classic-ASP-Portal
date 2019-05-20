<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AspWebApplication.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Please don't hesitate to contact us if you need any help.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Mobile:</span>
            <span>+98-9177393373</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Mehdi Naseri:</span>
            <span><a href="mailto:Mehdi@Naseri.net">Mehdi@Naseri.net</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Shiraz,
            <br />
            Iran,
            <br />
            Planet Earth,
            <br />
            Sun Solar System,
            <br />
            Milkyway Galexy
        </p>
    </section>

</asp:Content>
