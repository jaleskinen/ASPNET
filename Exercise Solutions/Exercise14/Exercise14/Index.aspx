<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Exercise14.Index" %>

<!DOCTYPE html>

<!-- code section -->
<script runat="server">
private void changetoupper(object sender, EventArgs e)
{
	string str = mytext.Value;
	changedtext.InnerHtml = str.ToUpper();
}
private void changetolower(object sender, EventArgs e)
{
    string str = mytext.Value;
    changedtext.InnerHtml = str.ToLower();
}
</script>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
	<input runat="server" id="mytext" type="text" />
	<input runat="server" id="mybuttontoupper" type="submit" value="To Upper" OnServerClick="changetoupper"/>
	<input runat="server" id="mybuttontolower" type="submit" value="To Lower" OnServerClick="changetolower"/>
    <hr />
    <h3> Results: </h3>
    <span runat="server" id="changedtext" />
    
    </div>
    </form>
</body>
</html>
