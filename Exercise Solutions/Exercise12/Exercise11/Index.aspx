<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Exercise11.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Repeater ID="Repeater" runat="server" DataSourceID="XmlDataSource1">     
            <ItemTemplate>         
                <p>Cat values are: <br />
                    Name: <strong><%# XPath("cat/name") %></strong><br />
                    Race: <%# XPath("cat/race") %><br />
                    Weight: <%# XPath("weight") %><br />
                    Weight Amount: <%# XPath("weight/@amount") %><br />
                </p>
            </ItemTemplate>     

        </asp:Repeater>

        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="/Models/XMLFileCat.xml" XPath="animallist/item"></asp:XmlDataSource>

    </div>
    </form>
</body>
</html>
