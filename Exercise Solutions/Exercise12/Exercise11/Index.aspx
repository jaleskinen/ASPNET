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

            <!-- JKE 1) Add a cat file as a XMLDataSource here
    JKE: Set position of xmlfile as a DataFile.
        -->
   <asp:XmlDataSource ID="MyDataSource" runat="server" DataFile="/Models/XMLFileCat.xml" XPath="animallist/item">
    </asp:XmlDataSource>    

    <!-- JKE 2) Add a ASP.NET element for a repeater here. 
        JKE: use XmlDataSource element value of DataSourceID attribute
        JKE: Parser data using XPath elements.        
        -->
    <asp:Repeater ID="Repeater" runat="server" DataSourceID="MyDataSource">
    <ItemTemplate>
        <p> cat values are: 
        <strong> <%# XPath("cat/name") %> </strong>
        <%# XPath("cat/race") %>
        <%# XPath("weight") %>
        <%# XPath("weight/@amount") %>
        </p>
    </ItemTemplate>
    </asp:Repeater>
    

    
    </div>
    </form>
</body>
</html>
