<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationWF01._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>This is my Web Form Page!</p>
    <p> <% =DateTime.Now %></p>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <p>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    

</asp:Content>
