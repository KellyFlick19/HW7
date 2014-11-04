<%@ Page Language="VB" AutoEventWireup="false" CodeFile="playerdetails.aspx.vb" Inherits="playerdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
          <span class="header">Kelly&#39;s NFL Players Website</span></div>
        <hr />
     
         <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp <a href="aboutus.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="contactus.aspx" style="color: #696969">Contact Us</a>
            <br /><br />
    </div>
    
        <asp:SqlDataSource ID="Sql_nflplayers" runat="server" ConnectionString="<%$ ConnectionStrings:db_flick_nflplayers %>" SelectCommand="SELECT * FROM [flick_nflplayers] WHERE ([PlayerID] = @PlayerID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PlayerID" QueryStringField="PlayerID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="PlayerID" DataSourceID="Sql_nflplayers" Height="50px" HorizontalAlign="Center" Width="125px">
            <Fields>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
