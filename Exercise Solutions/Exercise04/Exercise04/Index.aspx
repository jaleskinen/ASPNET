<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Exercise04.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<!--                                                 
JKE 1) Add asp control named table here           
JKE: This table control should have two TableRow elements.
JKE: Each table row should have two TableCell elements
-->

           <asp:Table ID="Table1" runat="server" CellPadding="2"
GridLines="both">
   <asp:TableRow>
     <asp:TableCell>Name:</asp:TableCell>
     <asp:TableCell>
         <asp:TextBox id="TextBox1" runat="server" />
     </asp:TableCell>
   </asp:TableRow>
   <asp:TableRow>
     <asp:TableCell>Age:</asp:TableCell>
     <asp:TableCell>
         <asp:TextBox id="TextBox2" runat="server" />
         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="TextBox2" ErrorMessage="Age must be a whole number. " /> 
         <asp:RangeValidator runat="server" id="rngAge" controltovalidate="TextBox2" type="Integer" minimumvalue="0" maximumvalue="120" errormessage=" Please enter a valid Age (0-120)! " />
     </asp:TableCell>
   </asp:TableRow>
</asp:Table>        
       <ItemTemplate>
<asp:DropDownList ID="cmbRooms" class="" runat="server" DataSource='<%# Enumerable.Range(0, 100) %>'>



</asp:DropDownList>
</ItemTemplate>



<!-- JKE: Add button here with click based event trigger -->
<p>
    <asp:Button Text="Press Me!" runat="server" id="Button1" OnClick="Button1_Click" />
</p>
<!-- Add two labels here -->
<p>
    <asp:Label id="Label1" runat="server" />
</p>

<p>
    <asp:Label id="Label2" runat="server" style="color:red" Font-Bold="true"/>
</p>
    </div>
    </form>
</body>
</html>
