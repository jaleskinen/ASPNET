<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Exercise11.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater" runat="server" DataSourceID="RSSDataSource">     
            <ItemTemplate>         
                <asp:HyperLink Target="_blank" runat="server"             
                    Text='<%# XPath("title") %>'              
                    NavigateUrl='<%# XPath("guid") %>' /></br>

                    <%# XPath("description") %>         
                <%--<asp:Label runat="server"--%>              
                    Julkaistu: '<%# DateTime.Parse(XPath("pubDate").ToString()) %>' <br />

                </br>      

            </ItemTemplate>     

        </asp:Repeater>  

        <asp:XmlDataSource ID="RSSDataSource" DataFile="http://yle.fi/uutiset/rss/uutiset.rss?osasto=internet"    XPath="rss/channel/item" runat="server"></asp:XmlDataSource> 
    
    </div>
    </form>
</body>
</html>
