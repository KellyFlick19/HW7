<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="playerdetails.aspx.vb" Inherits="Admin_playerdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Player Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:SqlDataSource ID="Sql_nflplayers" runat="server" ConnectionString="<%$ ConnectionStrings:db_flick_nflplayers %>" SelectCommand="SELECT * FROM [flick_nflplayers] WHERE ([PlayerID] = @PlayerID)" DeleteCommand="DELETE FROM [flick_nflplayers] WHERE [PlayerID] = @PlayerID" InsertCommand="INSERT INTO [flick_nflplayers] ([FirstName], [LastName], [Team], [Position], [Weight], [Height], [Experience], [College]) VALUES (@FirstName, @LastName, @Team, @Position, @Weight, @Height, @Experience, @College)" UpdateCommand="UPDATE [flick_nflplayers] SET [FirstName] = @FirstName, [LastName] = @LastName, [Team] = @Team, [Position] = @Position, [Weight] = @Weight, [Height] = @Height, [Experience] = @Experience, [College] = @College WHERE [PlayerID] = @PlayerID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="PlayerID" QueryStringField="PlayerID" Type="Int32" />
            </SelectParameters>
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
    
    </div>
        <asp:Label ID="lbldelete" runat="server"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="PlayerID" DataSourceID="Sql_nflplayers" Height="50px" HorizontalAlign="Center" Width="243px" BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="5" CellSpacing="3">
            <Fields>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BorderStyle="Solid" />
            <RowStyle BorderStyle="Solid" />
        </asp:DetailsView>
 </asp:Content>

