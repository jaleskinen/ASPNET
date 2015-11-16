<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Exercise13.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CompetitionDBEntities" DefaultContainerName="CompetitionDBEntities" EnableFlattening="False" EntitySetName="CatTable" Select="it.[Name], it.[Age]">
        </asp:EntityDataSource>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=CompetitionDBEntities" DefaultContainerName="CompetitionDBEntities" EnableFlattening="False" EntitySetName="OwnerTable" Select="it.[Ownername]">
        </asp:EntityDataSource>

        <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource2">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="OwnernameLabel" runat="server" Text='<%# Eval("Ownername") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="OwnernameTextBox" runat="server" Text='<%# Bind("Ownername") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="OwnernameTextBox" runat="server" Text='<%# Bind("Ownername") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="OwnernameLabel" runat="server" Text='<%# Eval("Ownername") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Ownername</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="OwnernameLabel" runat="server" Text='<%# Eval("Ownername") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    
        <br />
        The next is an example of datadisplay<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="NAME" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Age" HeaderText="AGE" ReadOnly="True" SortExpression="Age" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
