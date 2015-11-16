<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Exercise11.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p> ASP.NET Repeater control is used here for RSS feed: </p>

    <!-- JKE 1) Add a RSS feed as XMLDataSource here
    JKE: Set position of RSS feed as DataFile and set XPath to individual data items.
        -->
    <asp:XmlDataSource ID="RSSDataSource" DataFile="http://yle.fi/uutiset/rss/paauutiset.rss" 
    XPath="rss/channel/item" runat="server"></asp:XmlDataSource>

    <!-- JKE 2) Add a ASP.NET element for a repeater here. 
        JKE: use XmlDataSource element value of DataSourceID attribute
        JKE: Parser data using XPath elements.        
        -->
    <asp:Repeater ID="Repeater" runat="server" DataSourceID="RSSDataSource">
    <ItemTemplate>
        <asp:HyperLink runat="server"
            Text='<%# XPath("title") %>' 
            NavigateUrl='<%# XPath("guid") %>' />
        <asp:Label runat="server" 
            Text='<%# DateTime.Parse(XPath("pubDate").ToString()) %>' />
        </br>
     </ItemTemplate>
    </asp:Repeater>
    

    
    </div>
    </form>
</body>
</html>
