<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_nflplayers" runat="server" ConnectionString="<%$ ConnectionStrings:db_flick_nflplayers %>" DeleteCommand="DELETE FROM [flick_nflplayers] WHERE [PlayerID] = @PlayerID" InsertCommand="INSERT INTO [flick_nflplayers] ([FirstName], [LastName], [Team], [Position], [Weight], [Height], [Experience], [College]) VALUES (@FirstName, @LastName, @Team, @Position, @Weight, @Height, @Experience, @College)" SelectCommand="SELECT * FROM [flick_nflplayers]" UpdateCommand="UPDATE [flick_nflplayers] SET [FirstName] = @FirstName, [LastName] = @LastName, [Team] = @Team, [Position] = @Position, [Weight] = @Weight, [Height] = @Height, [Experience] = @Experience, [College] = @College WHERE [PlayerID] = @PlayerID">
            <DeleteParameters>
                <asp:Parameter Name="PlayerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Team" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Weight" Type="Int32" />
                <asp:Parameter Name="Height" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="College" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Team" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Weight" Type="Int32" />
                <asp:Parameter Name="Height" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="College" Type="String" />
                <asp:Parameter Name="PlayerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PlayerID" DataSourceID="Sql_nflplayers">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:HyperLinkField DataNavigateUrlFields="PlayerID" DataNavigateUrlFormatString="playerdetails.aspx?PlayerID={0}" HeaderText="Details" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
